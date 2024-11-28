package com.example.sd_41.service.GiayTheThao;

import com.example.sd_41.model.GiayTheThao;
import com.example.sd_41.model.GiayTheThaoChiTiet;
import com.example.sd_41.repository.SanPham.GiayTheThao.GiayTheThaoChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class GiayTheThaoChiTietService {

    @Autowired
    private GiayTheThaoChiTietRepository repo;

    //Todo code bán hàng tại quầy
    public List<GiayTheThaoChiTiet> getAll(){

        return repo.findAll();

    }

    public List<GiayTheThaoChiTiet> searchByName(String name) {
        System.out.println("Name: "+name);
        return repo.findAllByNameProduct(name);
    }

    public GiayTheThaoChiTiet getByGttMsSize(UUID idGtt, UUID idMauSac, UUID idSize) {

        return repo.findByGiayTheThaoAndSizeAndMauSac(idGtt, idSize, idMauSac);
    }
    public void saveAll(List<GiayTheThaoChiTiet> list) {
        repo.saveAll(list);
    }
    public List<GiayTheThaoChiTiet> getAllByGiayTheThao(GiayTheThao gtt) {
        return repo.findByGiayTheThao(gtt);
    }
}
