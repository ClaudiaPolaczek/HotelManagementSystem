﻿#pragma checksum "..\..\NewRoom.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "5959E6D5484138003040EA32397900FF6A782A2BDC2C3AF14F19997D77D88820"
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
    /// NewRoom
    /// </summary>
    public partial class NewRoom : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 28 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox NumberTextBox;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CapacityTextBox;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox FloorTextBox;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PriceTextBox;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SuiteBox;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\NewRoom.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ErrorBox;
        
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
            System.Uri resourceLocater = new System.Uri("/HotelSystem;component/newroom.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\NewRoom.xaml"
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
            this.NumberTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 31 "..\..\NewRoom.xaml"
            this.NumberTextBox.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.NumberValidationTextBox);
            
            #line default
            #line hidden
            return;
            case 2:
            this.CapacityTextBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 3:
            this.FloorTextBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.PriceTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 68 "..\..\NewRoom.xaml"
            this.PriceTextBox.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.DoubleNumberValidationTextBox);
            
            #line default
            #line hidden
            return;
            case 5:
            this.SuiteBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 6:
            this.ErrorBox = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            
            #line 84 "..\..\NewRoom.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.NewRoomButton);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

