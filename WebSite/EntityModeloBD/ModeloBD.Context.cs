﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityModeloBD
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ModeloBD : DbContext
    {
        public ModeloBD()
            : base("name=ModeloBD")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ahorro> ahorro { get; set; }
        public virtual DbSet<gasto> gasto { get; set; }
        public virtual DbSet<remuneracion> remuneracion { get; set; }
        public virtual DbSet<tarjeta> tarjeta { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}
