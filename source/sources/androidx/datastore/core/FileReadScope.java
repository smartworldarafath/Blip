package androidx.datastore.core;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.PreferencesFileSerializer;
import defpackage.u2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FileReadScope<T> implements ReadScope<T> {
    public final File a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    public FileReadScope(File file) {
        this.a = file;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(6:5|6|7|(1:(1:(5:11|12|13|14|15)(2:25|26))(3:27|28|29))(2:40|(6:44|45|46|47|(1:49)|50)(2:42|43))|30|31))|69|6|7|(0)(0)|30|31|(3:(1:36)|(1:21)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x006e, code lost:
    
        r9 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9, types: [androidx.datastore.core.FileReadScope] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object a(FileReadScope fileReadScope, ContinuationImpl continuationImpl) {
        FileReadScope$readData$1 fileReadScope$readData$1;
        ?? r2;
        Throwable th;
        java.io.Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th2;
        if (continuationImpl instanceof FileReadScope$readData$1) {
            fileReadScope$readData$1 = (FileReadScope$readData$1) continuationImpl;
            int i = fileReadScope$readData$1.q;
            if ((i & Integer.MIN_VALUE) != 0) {
                fileReadScope$readData$1.q = i - Integer.MIN_VALUE;
                Object obj = fileReadScope$readData$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                r2 = fileReadScope$readData$1.q;
                PreferencesFileSerializer preferencesFileSerializer = PreferencesFileSerializer.a;
                if (r2 == 0) {
                    if (r2 != 1) {
                        if (r2 == 2) {
                            closeable = (java.io.Closeable) fileReadScope$readData$1.m;
                            try {
                                ResultKt.b(obj);
                                CloseableKt.a(closeable, null);
                                return obj;
                            } catch (Throwable th3) {
                                th = th3;
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    fileInputStream = fileReadScope$readData$1.n;
                    r2 = (FileReadScope) fileReadScope$readData$1.m;
                    try {
                        ResultKt.b(obj);
                    } catch (Throwable th4) {
                        th2 = th4;
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } else {
                    ResultKt.b(obj);
                    if (!fileReadScope.b.get()) {
                        try {
                            FileInputStream fileInputStream2 = new FileInputStream(fileReadScope.a);
                            try {
                                fileReadScope$readData$1.m = fileReadScope;
                                fileReadScope$readData$1.n = fileInputStream2;
                                fileReadScope$readData$1.q = 1;
                                MutablePreferences a = preferencesFileSerializer.a(fileInputStream2);
                                if (a != coroutineSingletons) {
                                    fileInputStream = fileInputStream2;
                                    obj = a;
                                }
                            } catch (Throwable th5) {
                                r2 = fileReadScope;
                                fileInputStream = fileInputStream2;
                                th2 = th5;
                                throw th;
                            }
                        } catch (FileNotFoundException unused) {
                            if (fileReadScope.a.exists()) {
                                FileInputStream fileInputStream3 = new FileInputStream(fileReadScope.a);
                                try {
                                    fileReadScope$readData$1.m = fileInputStream3;
                                    fileReadScope$readData$1.n = null;
                                    fileReadScope$readData$1.q = 2;
                                    MutablePreferences a2 = preferencesFileSerializer.a(fileInputStream3);
                                    if (a2 != coroutineSingletons) {
                                        obj = a2;
                                        closeable = fileInputStream3;
                                        CloseableKt.a(closeable, null);
                                        return obj;
                                    }
                                    return coroutineSingletons;
                                } catch (Throwable th6) {
                                    th = th6;
                                    closeable = fileInputStream3;
                                    throw th;
                                }
                            }
                            return new MutablePreferences(true);
                        }
                        return coroutineSingletons;
                    }
                    u2.l("This scope has already been closed.");
                    return null;
                }
                CloseableKt.a(fileInputStream, null);
                return obj;
            }
        }
        fileReadScope$readData$1 = new FileReadScope$readData$1(fileReadScope, continuationImpl);
        Object obj2 = fileReadScope$readData$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        r2 = fileReadScope$readData$1.q;
        PreferencesFileSerializer preferencesFileSerializer2 = PreferencesFileSerializer.a;
        if (r2 == 0) {
        }
        CloseableKt.a(fileInputStream, null);
        return obj2;
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.b.set(true);
    }
}
