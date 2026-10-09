package net.blip.libblip;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.blip.libblip.LibBlip;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Logger {
    public final List a;

    public Logger(List list) {
        list.getClass();
        this.a = list;
    }

    public static ArrayList a(String str, Pair[] pairArr) {
        Iterable<Pair> v;
        if (str != null) {
            v = CollectionsKt.G(ArraysKt.w(pairArr), new Pair("tag", str));
        } else {
            v = ArraysKt.v(pairArr);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.m(v, 10));
        for (Pair pair : v) {
            arrayList.add(new Pair(pair.j, String.valueOf(pair.k)));
        }
        return arrayList;
    }

    public static String b() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        String className = ((StackTraceElement) LoggerKt.a(4, stackTrace)).getClassName();
        className.getClass();
        return (String) CollectionsKt.z(StringsKt.G(className, new String[]{"."}, 6));
    }

    public static void c(String str, Pair... pairArr) {
        LogLevel logLevel = LogLevel.k;
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str, a, (StackTraceElement) a2);
    }

    public static void d(String str, String str2, Pair... pairArr) {
        LogLevel logLevel = LogLevel.n;
        ArrayList a = a(str, pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str2, a, (StackTraceElement) a2);
    }

    public static void e(String str, Pair... pairArr) {
        LogLevel logLevel = LogLevel.n;
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str, a, (StackTraceElement) a2);
    }

    public static void f(Exception exc, Pair... pairArr) {
        LogLevel logLevel = LogLevel.n;
        String obj = exc.toString();
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, obj, a, (StackTraceElement) a2);
    }

    public static void g(String str, String str2, Pair... pairArr) {
        LogLevel logLevel = LogLevel.l;
        ArrayList a = a(str, pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str2, a, (StackTraceElement) a2);
    }

    public static void h(String str, Pair... pairArr) {
        LogLevel logLevel = LogLevel.l;
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str, a, (StackTraceElement) a2);
    }

    public static void i(LogLevel logLevel, String str, ArrayList arrayList, StackTraceElement stackTraceElement) {
        LibBlip.Companion companion = LibBlip.a;
        int i = logLevel.j;
        Logger logger = LoggerKt.a;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            arrayList2.add(pair.j);
            arrayList2.add(pair.k);
        }
        String[] strArr = (String[]) arrayList2.toArray(new String[0]);
        String className = stackTraceElement.getClassName();
        className.getClass();
        String str2 = CollectionsKt.z(StringsKt.G(className, new String[]{"."}, 6)) + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (fileName == null) {
            fileName = "null";
        }
        companion.log(i, str, strArr, str2, fileName, stackTraceElement.getLineNumber());
    }

    public static void j(String str, Pair... pairArr) {
        LogLevel logLevel = LogLevel.n;
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str, a, (StackTraceElement) a2);
        throw new IllegalStateException(str);
    }

    public static void k(String str, String str2, Pair... pairArr) {
        LogLevel logLevel = LogLevel.m;
        ArrayList a = a(str, pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str2, a, (StackTraceElement) a2);
    }

    public static void l(String str, Pair... pairArr) {
        LogLevel logLevel = LogLevel.m;
        ArrayList a = a(b(), pairArr);
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        Object a2 = LoggerKt.a(3, stackTrace);
        a2.getClass();
        i(logLevel, str, a, (StackTraceElement) a2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Logger) && Intrinsics.a(this.a, ((Logger) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final Logger m(String str, Pair... pairArr) {
        return new Logger(CollectionsKt.F(this.a, a(str, pairArr)));
    }

    public final String toString() {
        return "Logger(attrs=" + this.a + ")";
    }
}
