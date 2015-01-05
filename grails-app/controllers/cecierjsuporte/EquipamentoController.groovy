package cecierjsuporte

class EquipamentoController {

    def index() { }
    
    def salvar(){
        def equipamento = new Equipamento(params)
        equipamento.save(flush:true)
        redirect(url:"/navegar/listarEquipamentos")
    }
    
    def excluir(){
        def equipamento = Equipamento.get(params.id)
        equipamento.delete(flush:true)
        flash.message = "Equipamento excluído com sucesso"
        redirect(url:"/navegar/listarEquipamentos")
    }
}
