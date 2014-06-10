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
    public partial class fmForm1 : Form
    {
        public fmForm1()
        {
            InitializeComponent();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //TODO: Close the program/form
        }

        private void regionsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //TODO: Open a form as a dialogue box for viewing Region information
            fmViewRegions frm = new fmViewRegions();
            frm.ShowDialog();  //Execution of this method will PAUSE here until the dialogue box (fmViewRegions) 
                               //  is closed, resume after the dialogue box is closed
        }
    }
}
