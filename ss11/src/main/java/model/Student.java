package model;

public class Student {
    private int id;
    private String name;
    boolean sex;
    private double point;

    public Student(String name, boolean sex, double point) {
        this.name = name;
        this.sex = sex;
        this.point = point;
    }

    public Student(int id, String name, boolean sex, double point) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.point = point;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public double getPoint() {
        return point;
    }

    public void setPoint(double point) {
        this.point = point;
    }
}
