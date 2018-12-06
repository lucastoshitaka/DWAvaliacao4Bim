package DAOs;
import Entidades.UsuarioAdm;
import Entidades.Estado;
import java.util.ArrayList;
import java.util.List;

public class DAOUsuarioAdm extends DAOGenerico<UsuarioAdm> {

    public DAOUsuarioAdm() {
        super(UsuarioAdm.class);
    }

    public int autoIdUsuarioAdm() {
        Integer a = (Integer) em.createQuery("SELECT MAX(e.idUsuarioAdm) FROM UsuarioAdm e ").getSingleResult();
        if (a != null) {
            return a + 1;
        } else {
            return 1;
        }
    }

    public List<UsuarioAdm> listByNome(String nome) {
        return em.createQuery("SELECT e FROM UsuarioAdm e WHERE e.nome LIKE :nome").setParameter("nome", "%" + nome + "%").getResultList();
    }

    public List<UsuarioAdm> listById(int id) {
        return em.createQuery("SELECT e FROM UsuarioAdm e WHERE e.idUsuarioAdm = :id").setParameter("id", id).getResultList();
    }

    public List<UsuarioAdm> listInOrderNome() {
        return em.createQuery("SELECT e FROM UsuarioAdm e ORDER BY e.nome").getResultList();
    }

    public List<UsuarioAdm> listInOrderId() {
        return em.createQuery("SELECT e FROM UsuarioAdm e ORDER BY e.idUsuarioAdm").getResultList();
    }

    public List<String> listInOrderNomeStrings(String qualOrdem) {
        List<UsuarioAdm> lf;
        if (qualOrdem.equals("id")) {
            lf = listInOrderId();
        } else {
            lf = listInOrderNome();
        }

                    
        List<String> ls = new ArrayList<>();
        for (int i = 0; i < lf.size(); i++) {
            ls.add(lf.get(i).getIdusuarioAdm()
 + "-" + lf.get(i).getLoginusuarioAdm()
 + "-" + lf.get(i).getSenhausuarioAdm()
);
        }
        return ls;
    }
}
