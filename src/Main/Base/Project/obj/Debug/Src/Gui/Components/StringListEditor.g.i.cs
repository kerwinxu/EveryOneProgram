﻿#pragma checksum "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "405CEE034B811F05809CF356B77855F8F108A125"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using ICSharpCode.Core.Presentation;
using ICSharpCode.SharpDevelop.Widgets;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
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


namespace ICSharpCode.SharpDevelop.Gui {
    
    
    /// <summary>
    /// StringListEditor
    /// </summary>
    public partial class StringListEditor : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 24 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox editTextBox;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button browseButton;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button addButton;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button updateButton;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button removeButton;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox listBox;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button moveUpButton;
        
        #line default
        #line hidden
        
        
        #line 69 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button moveDownButton;
        
        #line default
        #line hidden
        
        
        #line 70 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button deleteButton;
        
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
            System.Uri resourceLocater = new System.Uri("/ICSharpCode.SharpDevelop;component/src/gui/components/stringlisteditor.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
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
            this.editTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 25 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.editTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.EditTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.browseButton = ((System.Windows.Controls.Button)(target));
            
            #line 32 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.browseButton.Click += new System.Windows.RoutedEventHandler(this.BrowseButtonClick);
            
            #line default
            #line hidden
            return;
            case 3:
            this.addButton = ((System.Windows.Controls.Button)(target));
            
            #line 39 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.addButton.Click += new System.Windows.RoutedEventHandler(this.AddButton_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.updateButton = ((System.Windows.Controls.Button)(target));
            
            #line 46 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.updateButton.Click += new System.Windows.RoutedEventHandler(this.UpdateButton_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.removeButton = ((System.Windows.Controls.Button)(target));
            return;
            case 6:
            this.listBox = ((System.Windows.Controls.ListBox)(target));
            
            #line 64 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.listBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ListBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 7:
            this.moveUpButton = ((System.Windows.Controls.Button)(target));
            
            #line 68 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.moveUpButton.Click += new System.Windows.RoutedEventHandler(this.MoveUpButtonClick);
            
            #line default
            #line hidden
            return;
            case 8:
            this.moveDownButton = ((System.Windows.Controls.Button)(target));
            
            #line 69 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.moveDownButton.Click += new System.Windows.RoutedEventHandler(this.MoveDownButtonClick);
            
            #line default
            #line hidden
            return;
            case 9:
            this.deleteButton = ((System.Windows.Controls.Button)(target));
            
            #line 70 "..\..\..\..\..\Src\Gui\Components\StringListEditor.xaml"
            this.deleteButton.Click += new System.Windows.RoutedEventHandler(this.RemoveButtonClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

