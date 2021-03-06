﻿#pragma checksum "..\..\MainWindowReception.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "C18BB2D97C212DA99C8EC81748DF38CC1DF718BDD7D75B89F2D30848F2EF3F15"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using HotelSystem;
using MaterialDesignThemes.MahApps;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
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


namespace HotelSystem {
    
    
    /// <summary>
    /// MainWindowReception
    /// </summary>
    public partial class MainWindowReception : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 26 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridMain;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Frame Main;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock NameSurname;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonPopUpLogout;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridMenu;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ListViewMenu;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListViewItem ItemHome;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\MainWindowReception.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListViewItem ItemCreate;
        
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
            System.Uri resourceLocater = new System.Uri("/HotelSystem;component/mainwindowreception.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\MainWindowReception.xaml"
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
            
            #line 12 "..\..\MainWindowReception.xaml"
            ((HotelSystem.MainWindowReception)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.Window_MouseDown);
            
            #line default
            #line hidden
            return;
            case 2:
            this.GridMain = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            this.Main = ((System.Windows.Controls.Frame)(target));
            return;
            case 4:
            this.NameSurname = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.ButtonPopUpLogout = ((System.Windows.Controls.Button)(target));
            
            #line 40 "..\..\MainWindowReception.xaml"
            this.ButtonPopUpLogout.Click += new System.Windows.RoutedEventHandler(this.ButtonPopUpLogout_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.GridMenu = ((System.Windows.Controls.Grid)(target));
            return;
            case 7:
            this.ListViewMenu = ((System.Windows.Controls.ListView)(target));
            return;
            case 8:
            this.ItemHome = ((System.Windows.Controls.ListViewItem)(target));
            
            #line 55 "..\..\MainWindowReception.xaml"
            this.ItemHome.Selected += new System.Windows.RoutedEventHandler(this.ItemRoom_Selected);
            
            #line default
            #line hidden
            return;
            case 9:
            this.ItemCreate = ((System.Windows.Controls.ListViewItem)(target));
            
            #line 61 "..\..\MainWindowReception.xaml"
            this.ItemCreate.Selected += new System.Windows.RoutedEventHandler(this.ItemNewReservation_Selected);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 67 "..\..\MainWindowReception.xaml"
            ((System.Windows.Controls.ListViewItem)(target)).Selected += new System.Windows.RoutedEventHandler(this.ItemReservations_Selected);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

