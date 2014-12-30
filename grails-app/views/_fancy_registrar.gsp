<div id="trabalhoForm" class="centralizar col-lg-10">
    <g:form class="form-horizontal" url="[action:'registrarAtendimento',controller:'ticket']"  >                          
       
        <input type="hidden" name="id_ticket" id="id_ticket">
        
        <div class="form-group">
            <label class="col-lg-3 control-label">Titulo</label>
            <div class="col-lg-7">                        
                <g:textField name="titulo" class="form-control"/>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-lg-3 control-label">Descrição</label>
            <div class="col-lg-7">                        
                <g:textArea name="descricao" class="form-control" rows="6"/>
            </div>
        </div>
        
        <div class="form-group">                            
            <button type="submit" class="btn btn-success navbar-btn ">Registrar Tarefa</button> 
        </div> 
    </g:form>
</div>