package com.krakedev.evaluacion.entidades;

import java.util.Date;

public class HistorialMovimientos {
	private String idMovimientos;
	private Productos productoId;
	private int cantidad;
	private Date fechaMovimiento;
	public HistorialMovimientos() {
		
	}
	public HistorialMovimientos(String idMovimientos, Productos productoId, int cantidad, Date fechaMovimiento) {
		super();
		this.idMovimientos = idMovimientos;
		this.productoId = productoId;
		this.cantidad = cantidad;
		this.fechaMovimiento = fechaMovimiento;
	}
	public String getIdMovimientos() {
		return idMovimientos;
	}
	public void setIdMovimientos(String idMovimientos) {
		this.idMovimientos = idMovimientos;
	}
	public Productos getProductoId() {
		return productoId;
	}
	public void setProductoId(Productos productoId) {
		this.productoId = productoId;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public Date getFechaMovimiento() {
		return fechaMovimiento;
	}
	public void setFechaMovimiento(Date fechaMovimiento) {
		this.fechaMovimiento = fechaMovimiento;
	}
	@Override
	public String toString() {
		return "HistorialMovimientos [idMovimientos=" + idMovimientos + ", productoId=" + productoId + ", cantidad="
				+ cantidad + ", fechaMovimiento=" + fechaMovimiento + "]";
	}
	
}
