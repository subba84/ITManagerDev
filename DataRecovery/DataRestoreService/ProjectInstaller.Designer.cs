
namespace DataRestoreService
{
    partial class ProjectInstaller
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.DataRestoreService = new System.ServiceProcess.ServiceProcessInstaller();
            this.DataRestoreServiceInstaller = new System.ServiceProcess.ServiceInstaller();
            // 
            // DataRestoreService
            // 
            this.DataRestoreService.Account = System.ServiceProcess.ServiceAccount.LocalSystem;
            this.DataRestoreService.Password = null;
            this.DataRestoreService.Username = null;
            // 
            // DataRestoreServiceInstaller
            // 
            this.DataRestoreServiceInstaller.DisplayName = "ITManager Restore Service";
            this.DataRestoreServiceInstaller.ServiceName = "ITManager Restore Service";
            // 
            // ProjectInstaller
            // 
            this.Installers.AddRange(new System.Configuration.Install.Installer[] {
            this.DataRestoreService,
            this.DataRestoreServiceInstaller});

        }

        #endregion

        private System.ServiceProcess.ServiceProcessInstaller DataRestoreService;
        private System.ServiceProcess.ServiceInstaller DataRestoreServiceInstaller;
    }
}