﻿#pragma checksum "..\..\ServerWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "2E1699507DF1A631FA4CA8428914BD5F49D82F3C06B431FEEE800E96E53C15A8"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using BaseControls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Server {
    
    
    /// <summary>
    /// ServerWindow
    /// </summary>
    public partial class ServerWindow : BaseControls.ChatWindow, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border windowBorder;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox connectedClients;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal BaseControls.ChatTextBox tbServerName;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal BaseControls.ChatTextBox tbPortNumber;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbInterfaces;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\ServerWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal BaseControls.ChatCheckBox cbStartStop;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Server;component/serverwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ServerWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 12 "..\..\ServerWindow.xaml"
            ((Server.ServerWindow)(target)).Closing += new System.ComponentModel.CancelEventHandler(this.ServerForm_OnClosing);
            
            #line default
            #line hidden
            return;
            case 2:
            this.windowBorder = ((System.Windows.Controls.Border)(target));
            return;
            case 3:
            this.connectedClients = ((System.Windows.Controls.ListBox)(target));
            return;
            case 4:
            this.tbServerName = ((BaseControls.ChatTextBox)(target));
            return;
            case 5:
            this.tbPortNumber = ((BaseControls.ChatTextBox)(target));
            return;
            case 6:
            this.cbInterfaces = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            this.cbStartStop = ((BaseControls.ChatCheckBox)(target));
            
            #line 41 "..\..\ServerWindow.xaml"
            this.cbStartStop.Checked += new System.Windows.RoutedEventHandler(this.cbStartStop_Checked);
            
            #line default
            #line hidden
            
            #line 41 "..\..\ServerWindow.xaml"
            this.cbStartStop.Unchecked += new System.Windows.RoutedEventHandler(this.cbStartStop_Checked);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

