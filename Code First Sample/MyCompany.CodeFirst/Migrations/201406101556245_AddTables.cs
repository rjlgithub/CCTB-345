namespace MyCompany.CodeFirst.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTables : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ContactDetails",
                c => new
                    {
                        ContactDetailId = c.Int(nullable: false),
                        HomeNumber = c.String(),
                        OfficeNumber = c.String(),
                    })
                .PrimaryKey(t => t.ContactDetailId)
                .ForeignKey("dbo.Customers", t => t.ContactDetailId)
                .Index(t => t.ContactDetailId);
            
            CreateTable(
                "dbo.LineItems",
                c => new
                    {
                        LineItemId = c.Int(nullable: false, identity: true),
                        Quantity = c.Int(nullable: false),
                        OrderId = c.Int(nullable: false),
                        ProductId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.LineItemId)
                .ForeignKey("dbo.Orders", t => t.OrderId, cascadeDelete: true)
                .ForeignKey("dbo.Products", t => t.ProductId, cascadeDelete: true)
                .Index(t => t.OrderId)
                .Index(t => t.ProductId);
            
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        ProductId = c.Int(nullable: false, identity: true),
                        Description = c.String(nullable: false, maxLength: 75),
                        Name = c.String(nullable: false, maxLength: 25),
                        LineItemId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ProductId);
            
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        CategoryId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.CategoryId);
            
            CreateTable(
                "dbo.CategoryProducts",
                c => new
                    {
                        Category_CategoryId = c.Int(nullable: false),
                        Product_ProductId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Category_CategoryId, t.Product_ProductId })
                .ForeignKey("dbo.Categories", t => t.Category_CategoryId, cascadeDelete: true)
                .ForeignKey("dbo.Products", t => t.Product_ProductId, cascadeDelete: true)
                .Index(t => t.Category_CategoryId)
                .Index(t => t.Product_ProductId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.LineItems", "ProductId", "dbo.Products");
            DropForeignKey("dbo.CategoryProducts", "Product_ProductId", "dbo.Products");
            DropForeignKey("dbo.CategoryProducts", "Category_CategoryId", "dbo.Categories");
            DropForeignKey("dbo.LineItems", "OrderId", "dbo.Orders");
            DropForeignKey("dbo.ContactDetails", "ContactDetailId", "dbo.Customers");
            DropIndex("dbo.CategoryProducts", new[] { "Product_ProductId" });
            DropIndex("dbo.CategoryProducts", new[] { "Category_CategoryId" });
            DropIndex("dbo.LineItems", new[] { "ProductId" });
            DropIndex("dbo.LineItems", new[] { "OrderId" });
            DropIndex("dbo.ContactDetails", new[] { "ContactDetailId" });
            DropTable("dbo.CategoryProducts");
            DropTable("dbo.Categories");
            DropTable("dbo.Products");
            DropTable("dbo.LineItems");
            DropTable("dbo.ContactDetails");
        }
    }
}
