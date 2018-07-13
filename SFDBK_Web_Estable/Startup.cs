using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SFDBK_Web_Estable.Startup))]
namespace SFDBK_Web_Estable
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
