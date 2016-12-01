/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Leonardo Silva
 */



import controle.ObjetoImpl;
import java.util.List;
import java.util.Scanner;
import modelo.Objeto;


 public class Main {

	public static void main(String[] args) {
                ObjetoImpl ObjetoImpl = new ObjetoImpl();
		
                Scanner in = new Scanner(System.in);
                for (int i = 0; i < 3; i++) {
                    Objeto o = new Objeto();
                    
                    System.out.print("Descrição: ");
                    o.setDescricao(in.next());
                    
                    System.out.print("Data Entrega: ");
                    o.setDataEmprestimo(in.next());
                    
                    
                    System.out.print("Data Devolução: ");
                    o.setDataDevolucao(in.next());
                    
                   
                    ObjetoImpl.salvar(o);
                }
                List<Objeto> list = ObjetoImpl.getListAll();
		String msg = ("idObjeto\t"+f("Descricao")+f("Data Entrega")+"\t"+f("Data Devolucao"));
		System.out.println(msg);
		for (int i = 0; i < msg.length(); i++) {
			System.out.print("-");
		}
		System.out.println();
		out(list);
		
                System.out.print("Escolha um id para pesquisa: ");
		Objeto a = ObjetoImpl.findById(in.nextInt());
		
		System.out.println("\n"+msg);
		for (int i = 0; i < msg.length(); i++) {
			System.out.print("-");
		}
		System.out.println();
		System.out.println(a.getIdObjeto()+"\t"+a.getDescricao()+"\t"+a.getDataEmprestimo()+"\t"+a.getDataDevolucao());
	}

	private static String f(String s) {
			for (int i = s.length(); i < 30; i++) {
				s+=" ";
			}
		return s;
	}

	private static void out(List<Objeto> list) {
		for (Objeto objeto : list) {
			System.out.println(objeto.getIdObjeto()+"\t"+objeto.getDescricao()+"\t"+objeto.getDataEmprestimo()+"\t"+objeto.getDataDevolucao());
		}
		
	}

}





