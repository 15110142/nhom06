package com.example.springbootcoffee.domain;
import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.Set;

@Table(name="nguyenlieu")
@Entity
public class NguyenLieu {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "MaNL")
    private Integer id;
    @Column(name = "TenNL")
    private String tennl;
    @Column(name="Image")
    private byte[] Image;
    public NguyenLieu()
    {

    }
    public NguyenLieu( String tennl,byte[] Image)
    {
      this.tennl = tennl;
      this.Image = Image;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTennl() {
        return tennl;
    }

    public void setTennl(String tennl) {
        this.tennl = tennl;
    }

    public byte[] getImage() {
        return Image;
    }

    public void setImage(byte[] image) {
        Image = image;
    }

}
