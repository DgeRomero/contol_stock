using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Articulo
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        [DisplayName("Código")]
        public string Codigo { get; set; }
        [DisplayName("Descripción")]
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public Marca Marca { get; set; }
        public Tipo Tipo { get; set; }
        public Contenedor Contenedor { get; set; }
        [DisplayName("Ubicación")]
        public Ubicacion Ubicacion { get; set; }
        public string UrlImagen { get; set; }
    }
}
