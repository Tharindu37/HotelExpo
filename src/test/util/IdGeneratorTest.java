package util;

class IdGeneratorTest {
    public static void main(String[] args) {
        new IdGeneratorTest().getId();
    }

    void getId() {
        System.out.println(IdGenerator.getId(16));;
    }
}