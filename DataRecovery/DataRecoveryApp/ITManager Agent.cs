using DataRecovery.Common;
using DataRecovery.Common.Models.ViewModels;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataRecoveryApp
{
    public partial class FrmITManagerAgent : Form
    {
        public FrmITManagerAgent()
        {
            InitializeComponent();
            tabControl1.DrawItem += new DrawItemEventHandler(tabControl1_DrawItem);
            this.FormClosing += new FormClosingEventHandler(Form1_Closing);

        }

        private void notifyIcon1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            LoadData();
            this.Show();
            this.WindowState = FormWindowState.Normal;
            
        }

        private void FrmITManagerAgent_Load(object sender, EventArgs e)
        {
            try
            {
                this.WindowState = FormWindowState.Minimized;
                this.ShowInTaskbar = false;
            }
            catch (Exception ex)
            {
                Logger.LogAgentAppJson(ex.Message + ex.StackTrace);
            }

        }

        private void tabControl1_DrawItem(Object sender, System.Windows.Forms.DrawItemEventArgs e)
        {
            Graphics g = e.Graphics;
            Brush _textBrush;

            // Get the item from the collection.
            TabPage _tabPage = tabControl1.TabPages[e.Index];

            // Get the real bounds for the tab rectangle.
            Rectangle _tabBounds = tabControl1.GetTabRect(e.Index);

            if (e.State == DrawItemState.Selected)
            {

                // Draw a different background color, and don't paint a focus rectangle.
                _textBrush = new SolidBrush(Color.Red);
                g.FillRectangle(Brushes.Gray, e.Bounds);
            }
            else
            {
                _textBrush = new System.Drawing.SolidBrush(e.ForeColor);
                e.DrawBackground();
            }

            // Use our own font.
            Font _tabFont = new Font("Arial", 10.0f, FontStyle.Bold, GraphicsUnit.Pixel);

            // Draw string. Center the text.
            StringFormat _stringFlags = new StringFormat();
            _stringFlags.Alignment = StringAlignment.Center;
            _stringFlags.LineAlignment = StringAlignment.Center;
            g.DrawString(_tabPage.Text, _tabFont, _textBrush, _tabBounds, new StringFormat(_stringFlags));
        }

        private void LoadData()
        {
            DirectoryInfo di = new DirectoryInfo(System.AppDomain.CurrentDomain.BaseDirectory);
            string fileName = di.Parent.FullName + "\\IT Manager Backup\\Logs\\" + "\\BackupHistory.json";
            if (File.Exists(fileName))
            {
                List<BackupHistoryModel> objroot = new List<BackupHistoryModel>();
                objroot = JsonConvert.DeserializeObject<List<BackupHistoryModel>>(File.ReadAllText(fileName)).OrderByDescending(k => k.BackupDateTime).ToList();

                dgvBackupHistory.DataSource = objroot;
                dgvBackupHistory.Columns["BackupName"].Visible = false;
                dgvBackupHistory.Columns["BackupSize"].Visible = false;
                dgvBackupHistory.Columns["BackupDateTime"].HeaderText = "Backup Created";
                dgvBackupHistory.Columns["BackupSizeText"].HeaderText = "Backup Size";
            }
        }

        private void Form1_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
            this.ShowInTaskbar = false;
            this.Hide();
            e.Cancel = true;
        }

        private void FrmITManagerAgent_Resize(object sender, EventArgs e)
        {
            if(this.WindowState == FormWindowState.Minimized)
            {
                this.Hide();
            }
        }
    }
}
