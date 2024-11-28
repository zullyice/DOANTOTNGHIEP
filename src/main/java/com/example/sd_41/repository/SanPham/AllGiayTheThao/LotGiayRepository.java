package com.example.sd_41.repository.SanPham.AllGiayTheThao;

import com.example.sd_41.model.LotGiay;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;


@Repository
public interface LotGiayRepository extends JpaRepository<LotGiay, UUID> {
}
