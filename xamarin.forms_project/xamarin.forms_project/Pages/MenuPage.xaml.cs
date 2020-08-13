using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace xamarin.forms_project.Pages
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MenuPage : ContentPage
	{
		public MenuPage()
		{
			InitializeComponent();
		}

		private void Button_Clicked(object sender, EventArgs e)
		{
			Navigation.PushAsync(new NextPage());
		}
	}
}