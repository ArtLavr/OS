//Подключение библиотек для работы

import java.util.*;
import java.io.IOException;
import java.util.Scanner;
import java.lang.ProcessBuilder;
import java.util.concurrent.TimeUnit;


public class Main {

    public static void main(String[] args) throws IOException, InterruptedException {
        //Создание процессов
        Process prpcess1 = (new ProcessBuilder("notepad.exe")).start();
        Process process2 = (new ProcessBuilder("mspaint.exe")).start();
        Process process3 = (new ProcessBuilder ("calc.exe")).start();
        
        // ввод и присваивание переменной являющейся идентификатором процесса
        System.out.print("Input a PID: ");
        int pid = (new Scanner(System.in)).nextInt();

        // получаем объект ProcessHadle для процесса с указанным pid
        Optional<ProcessHandle> optionalProcessHandle = ProcessHandle.of(pid);
        //уничтожение этого процесса при его наличии
        optionalProcessHandle.ifPresent(processHandle -> processHandle.destroy());

        isInvalid(process1.waitFor(40, TimeUnit.SECONDS));
        isInvalid(process2.waitFor(40, TimeUnit.SECONDS));
        isInvalid(process3.waitFor(40, TimeUnit.SECONDS));

        //уничтожение процессв
        process1.destroy();
        if (process1.isAlive()) {
            //принудительное уничтожение процесса 
            process1.destroyForcibly();
        }
        process2.destroy();
        if (process2.isAlive()) {
            process2.destroyForcibly();
        }
        process3.destroy();
        if (process3.isAlive()) {
            process3.destroyForcibly();
        }
    }

    private static void isInvalid(boolean waitFor) {
        System.out.print("Waiting error.");
    }
}
