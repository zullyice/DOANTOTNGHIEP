package com.example.sd_41.controller.GiaoHangNhanh;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class TransportationFeeDTO {

    public static final Integer heightProduct = 16;

    public static final Integer lengthProduct = 8;

    public static final Integer weightProduct = 500;

    public static final Integer widthProduct = 4;

    private  Integer toDistrictId;

    private String toWardCode;

    private Integer insuranceValue;

    private Integer quantity;

}
