package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import android.util.Xml;
import androidx.core.R$styleable;
import androidx.core.provider.FontRequest;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontResourcesParserCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface FamilyResourceEntry {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {
        public final FontFileResourceEntry[] a;

        public FontFamilyFilesResourceEntry(FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.a = fontFileResourceEntryArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FontFileResourceEntry {
        public final String a;
        public final int b;
        public final boolean c;
        public final String d;
        public final int e;
        public final int f;

        public FontFileResourceEntry(int i, int i2, int i3, String str, String str2, boolean z) {
            this.a = str;
            this.b = i;
            this.c = z;
            this.d = str2;
            this.e = i2;
            this.f = i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ProviderResourceEntry implements FamilyResourceEntry {
        public final ArrayList a;
        public final int b;
        public final int c;
        public final String d;

        public ProviderResourceEntry(ArrayList arrayList, int i, int i2, String str) {
            this.a = arrayList;
            this.c = i;
            this.b = i2;
            this.d = str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27, types: [android.content.res.TypedArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FamilyResourceEntry a(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        String str;
        int i6;
        ?? r4;
        long j;
        Throwable th;
        TypedArray typedArray;
        boolean isTerminated;
        TimeUnit timeUnit = TimeUnit.DAYS;
        do {
            next = xmlResourceParser.next();
            i = 2;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlResourceParser.require(2, null, "font-family");
            if (xmlResourceParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.b);
                int i7 = 0;
                String string = obtainAttributes.getString(0);
                String string2 = obtainAttributes.getString(5);
                String string3 = obtainAttributes.getString(6);
                String string4 = obtainAttributes.getString(2);
                int resourceId = obtainAttributes.getResourceId(1, 0);
                int i8 = 3;
                int integer = obtainAttributes.getInteger(3, 1);
                int integer2 = obtainAttributes.getInteger(4, 500);
                String string5 = obtainAttributes.getString(7);
                obtainAttributes.recycle();
                if (string != null && string2 != null) {
                    List b = b(resources, resourceId);
                    ArrayList arrayList = new ArrayList();
                    while (xmlResourceParser.next() != i8) {
                        if (xmlResourceParser.getEventType() == i) {
                            if (xmlResourceParser.getName().equals("fallback")) {
                                TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.d);
                                int i9 = integer;
                                try {
                                    String string6 = obtainAttributes2.getString(i7);
                                    String string7 = obtainAttributes2.getString(1);
                                    String string8 = obtainAttributes2.getString(i);
                                    if (string6 != null) {
                                        while (xmlResourceParser.next() != 3) {
                                            try {
                                                c(xmlResourceParser);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                typedArray = obtainAttributes2;
                                                j = 1;
                                            }
                                        }
                                        try {
                                            str = string5;
                                            r4 = obtainAttributes2;
                                            i6 = i9;
                                            i5 = integer2;
                                            j = 1;
                                            try {
                                                FontRequest fontRequest = new FontRequest(string, string2, string6, b, string7, string8);
                                                if (r4 instanceof AutoCloseable) {
                                                    ((AutoCloseable) r4).close();
                                                } else if (r4 instanceof ExecutorService) {
                                                    ExecutorService executorService = (ExecutorService) r4;
                                                    if (executorService != ForkJoinPool.commonPool() && !(isTerminated = executorService.isTerminated())) {
                                                        executorService.shutdown();
                                                        boolean z2 = false;
                                                        while (!isTerminated) {
                                                            try {
                                                                isTerminated = executorService.awaitTermination(1L, timeUnit);
                                                            } catch (InterruptedException unused) {
                                                                if (!z2) {
                                                                    executorService.shutdownNow();
                                                                    z2 = true;
                                                                }
                                                            }
                                                        }
                                                        if (z2) {
                                                            Thread.currentThread().interrupt();
                                                        }
                                                    }
                                                } else {
                                                    r4.recycle();
                                                }
                                                arrayList.add(fontRequest);
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            r4 = obtainAttributes2;
                                            j = 1;
                                            th = th;
                                            typedArray = r4;
                                            if (typedArray == null) {
                                            }
                                        }
                                    } else {
                                        r4 = obtainAttributes2;
                                        j = 1;
                                        throw new XmlPullParserException("query attribute must be set in fallback element");
                                    }
                                    th = th3;
                                } catch (Throwable th5) {
                                    th = th5;
                                    r4 = obtainAttributes2;
                                }
                                th = th;
                                typedArray = r4;
                                if (typedArray == null) {
                                    try {
                                        if (!(typedArray instanceof AutoCloseable)) {
                                            if (typedArray instanceof ExecutorService) {
                                                ExecutorService executorService2 = (ExecutorService) typedArray;
                                                if (executorService2 != ForkJoinPool.commonPool()) {
                                                    boolean isTerminated2 = executorService2.isTerminated();
                                                    if (!isTerminated2) {
                                                        executorService2.shutdown();
                                                        boolean z3 = false;
                                                        while (!isTerminated2) {
                                                            try {
                                                                isTerminated2 = executorService2.awaitTermination(j, timeUnit);
                                                            } catch (InterruptedException unused2) {
                                                                if (!z3) {
                                                                    executorService2.shutdownNow();
                                                                    z3 = true;
                                                                }
                                                            }
                                                        }
                                                        if (z3) {
                                                            Thread.currentThread().interrupt();
                                                            throw th;
                                                        }
                                                        throw th;
                                                    }
                                                    throw th;
                                                }
                                                throw th;
                                            }
                                            typedArray.recycle();
                                            throw th;
                                        }
                                        typedArray.close();
                                        throw th;
                                    } catch (Throwable th6) {
                                        th.addSuppressed(th6);
                                        throw th;
                                    }
                                }
                                throw th;
                            }
                            i5 = integer2;
                            str = string5;
                            i6 = integer;
                            c(xmlResourceParser);
                            integer = i6;
                            integer2 = i5;
                            string5 = str;
                            i = 2;
                            i7 = 0;
                            i8 = 3;
                        }
                    }
                    int i10 = integer2;
                    String str2 = string5;
                    int i11 = integer;
                    if (!arrayList.isEmpty()) {
                        return new ProviderResourceEntry(arrayList, i11, i10, str2);
                    }
                    if (string3 != null) {
                        arrayList.add(new FontRequest(string, string2, string3, b, null, null));
                        if (string4 != null) {
                            arrayList.add(new FontRequest(string, string2, string4, b, null, null));
                        }
                        return new ProviderResourceEntry(arrayList, i11, i10, str2);
                    }
                    u2.g("The provider font XML requires query attribute or fallback children.");
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                while (xmlResourceParser.next() != 3) {
                    if (xmlResourceParser.getEventType() == 2) {
                        if (xmlResourceParser.getName().equals("font")) {
                            TypedArray obtainAttributes3 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.c);
                            int i12 = 8;
                            if (!obtainAttributes3.hasValue(8)) {
                                i12 = 1;
                            }
                            int i13 = obtainAttributes3.getInt(i12, 400);
                            if (obtainAttributes3.hasValue(6)) {
                                i2 = 6;
                            } else {
                                i2 = 2;
                            }
                            if (1 == obtainAttributes3.getInt(i2, 0)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            int i14 = 9;
                            if (!obtainAttributes3.hasValue(9)) {
                                i14 = 3;
                            }
                            if (obtainAttributes3.hasValue(7)) {
                                i3 = 7;
                            } else {
                                i3 = 4;
                            }
                            String string9 = obtainAttributes3.getString(i3);
                            int i15 = obtainAttributes3.getInt(i14, 0);
                            if (obtainAttributes3.hasValue(5)) {
                                i4 = 5;
                            } else {
                                i4 = 0;
                            }
                            int resourceId2 = obtainAttributes3.getResourceId(i4, 0);
                            String string10 = obtainAttributes3.getString(i4);
                            obtainAttributes3.recycle();
                            while (xmlResourceParser.next() != 3) {
                                c(xmlResourceParser);
                            }
                            arrayList2.add(new FontFileResourceEntry(i13, i15, resourceId2, string10, string9, z));
                        } else {
                            c(xmlResourceParser);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    return null;
                }
                return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList2.toArray(new FontFileResourceEntry[0]));
            }
            c(xmlResourceParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List b(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static void c(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next != 2) {
                if (next == 3) {
                    i--;
                }
            } else {
                i++;
            }
        }
    }
}
