package entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user", schema = "health")
public class Userentity {
    private int id;
    private String serialNumber;
    private String name;
    private String sex;
    private String birth;
    private String age;
    private String identity;
    private String ethnic;
    private String adress;
    private String tel;
    private String marriage;
    private String height;
    private String weight;
    private String temperature;
    private String bloodtype;
    private String pulse;
    private String heartRate;
    private String leftEyesight;
    private String rightEyesight;
    private String leftHear;
    private String rightHear;
    private String systolicBloodPressure;
    private String diastolicPressure;
    private String userCase;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "serialNumber", nullable = true, length = 20)
    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 30)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 10)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "birth", nullable = true, length = 20)
    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "age", nullable = true, length = 3)
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Basic
    @Column(name = "identity", nullable = true, length = 20)
    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    @Basic
    @Column(name = "ethnic", nullable = true, length = 10)
    public String getEthnic() {
        return ethnic;
    }

    public void setEthnic(String ethnic) {
        this.ethnic = ethnic;
    }

    @Basic
    @Column(name = "adress", nullable = true, length = 20)
    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    @Basic
    @Column(name = "tel", nullable = true, length = 11)
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Basic
    @Column(name = "marriage", nullable = true, length = 10)
    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    @Basic
    @Column(name = "height", nullable = true, length = 10)
    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    @Basic
    @Column(name = "weight", nullable = true, length = 10)
    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    @Basic
    @Column(name = "temperature", nullable = true, length = 10)
    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    @Basic
    @Column(name = "bloodtype", nullable = true, length = 10)
    public String getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(String bloodtype) {
        this.bloodtype = bloodtype;
    }

    @Basic
    @Column(name = "pulse", nullable = true, length = 10)
    public String getPulse() {
        return pulse;
    }

    public void setPulse(String pulse) {
        this.pulse = pulse;
    }

    @Basic
    @Column(name = "heartRate", nullable = true, length = 10)
    public String getHeartRate() {
        return heartRate;
    }

    public void setHeartRate(String heartRate) {
        this.heartRate = heartRate;
    }

    @Basic
    @Column(name = "leftEyesight", nullable = true, length = 10)
    public String getLeftEyesight() {
        return leftEyesight;
    }

    public void setLeftEyesight(String leftEyesight) {
        this.leftEyesight = leftEyesight;
    }

    @Basic
    @Column(name = "rightEyesight", nullable = true, length = 10)
    public String getRightEyesight() {
        return rightEyesight;
    }

    public void setRightEyesight(String rightEyesight) {
        this.rightEyesight = rightEyesight;
    }

    @Basic
    @Column(name = "leftHear", nullable = true, length = 10)
    public String getLeftHear() {
        return leftHear;
    }

    public void setLeftHear(String leftHear) {
        this.leftHear = leftHear;
    }

    @Basic
    @Column(name = "rightHear", nullable = true, length = 10)
    public String getRightHear() {
        return rightHear;
    }

    public void setRightHear(String rightHear) {
        this.rightHear = rightHear;
    }

    @Basic
    @Column(name = "systolicBloodPressure", nullable = true, length = 20)
    public String getSystolicBloodPressure() {
        return systolicBloodPressure;
    }

    public void setSystolicBloodPressure(String systolicBloodPressure) {
        this.systolicBloodPressure = systolicBloodPressure;
    }

    @Basic
    @Column(name = "diastolicPressure", nullable = true, length = 20)
    public String getDiastolicPressure() {
        return diastolicPressure;
    }

    public void setDiastolicPressure(String diastolicPressure) {
        this.diastolicPressure = diastolicPressure;
    }

    @Basic
    @Column(name = "userCase", nullable = true, length = 255)
    public String getUserCase() {
        return userCase;
    }

    public void setUserCase(String userCase) {
        this.userCase = userCase;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Userentity that = (Userentity) o;
        return id == that.id &&
                Objects.equals(serialNumber, that.serialNumber) &&
                Objects.equals(name, that.name) &&
                Objects.equals(sex, that.sex) &&
                Objects.equals(birth, that.birth) &&
                Objects.equals(age, that.age) &&
                Objects.equals(identity, that.identity) &&
                Objects.equals(ethnic, that.ethnic) &&
                Objects.equals(adress, that.adress) &&
                Objects.equals(tel, that.tel) &&
                Objects.equals(marriage, that.marriage) &&
                Objects.equals(height, that.height) &&
                Objects.equals(weight, that.weight) &&
                Objects.equals(temperature, that.temperature) &&
                Objects.equals(bloodtype, that.bloodtype) &&
                Objects.equals(pulse, that.pulse) &&
                Objects.equals(heartRate, that.heartRate) &&
                Objects.equals(leftEyesight, that.leftEyesight) &&
                Objects.equals(rightEyesight, that.rightEyesight) &&
                Objects.equals(leftHear, that.leftHear) &&
                Objects.equals(rightHear, that.rightHear) &&
                Objects.equals(systolicBloodPressure, that.systolicBloodPressure) &&
                Objects.equals(diastolicPressure, that.diastolicPressure) &&
                Objects.equals(userCase, that.userCase);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, serialNumber, name, sex, birth, age, identity, ethnic, adress, tel, marriage, height, weight, temperature, bloodtype, pulse, heartRate, leftEyesight, rightEyesight, leftHear, rightHear, systolicBloodPressure, diastolicPressure, userCase);
    }
}
