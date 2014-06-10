using NorthwindSystem.BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DesktopApp
{
    public partial class fmViewRegions : Form
    {
        public fmViewRegions()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void fmViewRegions_Load(object sender, EventArgs e)
        {
            //Populate the ComboBox
            NorthwindManager manager = new NorthwindManager();
            var data = manager.GetRegions();
            cboRegions.DataSource = data;
            cboRegions.DisplayMember = "RegionDescription";
            cboRegions.ValueMember = "RegionID";
        }
    }
}
