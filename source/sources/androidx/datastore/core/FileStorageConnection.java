package androidx.datastore.core;

import defpackage.fe;
import defpackage.u2;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileStorageConnection<T> implements StorageConnection<T> {
    public final File a;
    public final InterProcessCoordinator b;
    public final Function0 c;
    public final AtomicBoolean d;
    public final MutexImpl e;

    public FileStorageConnection(File file, InterProcessCoordinator interProcessCoordinator, Function0 function0) {
        interProcessCoordinator.getClass();
        this.a = file;
        this.b = interProcessCoordinator;
        this.c = function0;
        this.d = new AtomicBoolean(false);
        this.e = new MutexImpl();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(7:5|6|(1:(3:9|10|11)(2:42|43))(2:44|(6:46|47|48|49|50|(1:52)(1:53))(2:57|58))|12|13|14|(2:(1:17)|18)(2:20|21)))|59|6|(0)(0)|12|13|14|(0)(0)|(2:(0)|(1:40))) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        r8 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Function3 function3, ContinuationImpl continuationImpl) {
        FileStorageConnection$readScope$1 fileStorageConnection$readScope$1;
        int i;
        boolean f;
        Throwable th;
        FileReadScope fileReadScope;
        FileStorageConnection<T> fileStorageConnection;
        boolean z;
        if (continuationImpl instanceof FileStorageConnection$readScope$1) {
            fileStorageConnection$readScope$1 = (FileStorageConnection$readScope$1) continuationImpl;
            int i2 = fileStorageConnection$readScope$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileStorageConnection$readScope$1.r = i2 - Integer.MIN_VALUE;
                Object obj = fileStorageConnection$readScope$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = fileStorageConnection$readScope$1.r;
                if (i == 0) {
                    if (i == 1) {
                        z = fileStorageConnection$readScope$1.o;
                        fileReadScope = fileStorageConnection$readScope$1.n;
                        fileStorageConnection = fileStorageConnection$readScope$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th2) {
                            f = z;
                            this = fileStorageConnection;
                            th = th2;
                            try {
                                fileReadScope.close();
                                throw th;
                            } catch (Throwable th3) {
                                ExceptionsKt.a(th, th3);
                                throw th;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (!this.d.get()) {
                        f = this.e.f();
                        try {
                            FileReadScope fileReadScope2 = new FileReadScope(this.a);
                            try {
                                Boolean valueOf = Boolean.valueOf(f);
                                fileStorageConnection$readScope$1.m = this;
                                fileStorageConnection$readScope$1.n = fileReadScope2;
                                fileStorageConnection$readScope$1.o = f;
                                fileStorageConnection$readScope$1.r = 1;
                                Object f2 = ((StorageConnectionKt$readData$2) function3).f(fileReadScope2, valueOf, fileStorageConnection$readScope$1);
                                if (f2 == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                fileStorageConnection = this;
                                z = f;
                                obj = f2;
                                fileReadScope = fileReadScope2;
                            } catch (Throwable th4) {
                                th = th4;
                                fileReadScope = fileReadScope2;
                                fileReadScope.close();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            if (f) {
                            }
                            throw th;
                        }
                    } else {
                        u2.l("StorageConnection has already been disposed.");
                        return null;
                    }
                }
                fileReadScope.close();
                th = null;
                if (th != null) {
                    if (z) {
                        fileStorageConnection.e.h(null);
                    }
                    return obj;
                }
                try {
                    throw th;
                } catch (Throwable th6) {
                    th = th6;
                    f = z;
                    this = fileStorageConnection;
                    if (f) {
                        this.e.h(null);
                    }
                    throw th;
                }
            }
        }
        fileStorageConnection$readScope$1 = new FileStorageConnection$readScope$1(this, continuationImpl);
        Object obj2 = fileStorageConnection$readScope$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = fileStorageConnection$readScope$1.r;
        if (i == 0) {
        }
        fileReadScope.close();
        th = null;
        if (th != null) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:(7:(2:3|(11:5|6|7|(1:(1:(7:11|12|13|14|15|16|(4:18|(3:20|21|22)|27|28)(1:29))(2:40|41))(1:42))(2:60|(3:62|(2:64|(2:66|67))|68)(2:70|71))|43|44|45|46|47|(5:50|14|15|16|(0)(0))|49))|44|45|46|47|(0)|49)|7|(0)(0)|43) */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0088, code lost:
    
        if (r11.a(r1) == r2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0109, code lost:
    
        r9 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x010a, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c9 A[Catch: all -> 0x0107, IOException -> 0x0109, TRY_ENTER, TryCatch #0 {IOException -> 0x0109, blocks: (B:18:0x00c9, B:20:0x00cf, B:24:0x00e6, B:25:0x0106, B:29:0x0113, B:39:0x011e, B:36:0x0121), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0113 A[Catch: all -> 0x0107, IOException -> 0x0109, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x0109, blocks: (B:18:0x00c9, B:20:0x00cf, B:24:0x00e6, B:25:0x0106, B:29:0x0113, B:39:0x011e, B:36:0x0121), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object, java.io.File] */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.datastore.core.FileReadScope, java.lang.Object, androidx.datastore.core.FileWriteScope] */
    /* JADX WARN: Type inference failed for: r9v25, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Function2 function2, ContinuationImpl continuationImpl) {
        FileStorageConnection$writeScope$1 fileStorageConnection$writeScope$1;
        ?? r11;
        CoroutineSingletons coroutineSingletons;
        int i;
        ?? r3;
        MutexImpl mutexImpl;
        ?? r10;
        ?? fileReadScope;
        Throwable th;
        FileWriteScope fileWriteScope;
        FileStorageConnection<T> fileStorageConnection;
        Mutex mutex;
        File file;
        try {
            try {
                try {
                    try {
                        if (continuationImpl instanceof FileStorageConnection$writeScope$1) {
                            fileStorageConnection$writeScope$1 = (FileStorageConnection$writeScope$1) continuationImpl;
                            int i2 = fileStorageConnection$writeScope$1.s;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                fileStorageConnection$writeScope$1.s = i2 - Integer.MIN_VALUE;
                                r11 = fileStorageConnection$writeScope$1.q;
                                coroutineSingletons = CoroutineSingletons.j;
                                i = fileStorageConnection$writeScope$1.s;
                                if (i == 0) {
                                    if (i != 1) {
                                        if (i == 2) {
                                            fileWriteScope = fileStorageConnection$writeScope$1.p;
                                            file = (File) fileStorageConnection$writeScope$1.o;
                                            mutex = (Mutex) fileStorageConnection$writeScope$1.n;
                                            fileStorageConnection = fileStorageConnection$writeScope$1.m;
                                            try {
                                                ResultKt.b(r11);
                                                try {
                                                    fileWriteScope.close();
                                                    th = null;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                }
                                                if (th != null) {
                                                    if (file.exists()) {
                                                        try {
                                                            Files.move(file.toPath(), fileStorageConnection.a.toPath(), StandardCopyOption.REPLACE_EXISTING);
                                                        } catch (IOException unused) {
                                                            throw new IOException("Unable to rename " + file + " to " + fileStorageConnection.a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                                        }
                                                    }
                                                    mutex.h(null);
                                                    return Unit.a;
                                                }
                                                throw th;
                                            } catch (Throwable th3) {
                                                th = th3;
                                                try {
                                                    fileWriteScope.close();
                                                } catch (Throwable th4) {
                                                    ExceptionsKt.a(th, th4);
                                                }
                                                throw th;
                                            }
                                        }
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ?? r9 = (Mutex) fileStorageConnection$writeScope$1.o;
                                    Function2 function22 = (Function2) fileStorageConnection$writeScope$1.n;
                                    FileStorageConnection<T> fileStorageConnection2 = fileStorageConnection$writeScope$1.m;
                                    ResultKt.b(r11);
                                    mutexImpl = r9;
                                    this = fileStorageConnection2;
                                    r10 = function22;
                                } else {
                                    ResultKt.b(r11);
                                    if (!this.d.get()) {
                                        File file2 = this.a;
                                        File parentFile = file2.getCanonicalFile().getParentFile();
                                        if (parentFile != null) {
                                            parentFile.mkdirs();
                                            if (!parentFile.isDirectory()) {
                                                fe.v(file2, "Unable to create parent directories of ");
                                                return null;
                                            }
                                        }
                                        fileStorageConnection$writeScope$1.m = this;
                                        fileStorageConnection$writeScope$1.n = function2;
                                        mutexImpl = this.e;
                                        fileStorageConnection$writeScope$1.o = mutexImpl;
                                        fileStorageConnection$writeScope$1.s = 1;
                                        r10 = function2;
                                    } else {
                                        u2.l("StorageConnection has already been disposed.");
                                        return null;
                                    }
                                }
                                r3 = new File(this.a.getAbsolutePath() + ".tmp");
                                fileReadScope = new FileReadScope(r3);
                                fileStorageConnection$writeScope$1.m = this;
                                fileStorageConnection$writeScope$1.n = mutexImpl;
                                fileStorageConnection$writeScope$1.o = r3;
                                fileStorageConnection$writeScope$1.p = fileReadScope;
                                fileStorageConnection$writeScope$1.s = 2;
                                if (r10.n(fileReadScope, fileStorageConnection$writeScope$1) != coroutineSingletons) {
                                    fileStorageConnection = this;
                                    mutex = mutexImpl;
                                    file = r3;
                                    fileWriteScope = fileReadScope;
                                    fileWriteScope.close();
                                    th = null;
                                    if (th != null) {
                                    }
                                }
                                return coroutineSingletons;
                            }
                        }
                        fileStorageConnection$writeScope$1.m = this;
                        fileStorageConnection$writeScope$1.n = mutexImpl;
                        fileStorageConnection$writeScope$1.o = r3;
                        fileStorageConnection$writeScope$1.p = fileReadScope;
                        fileStorageConnection$writeScope$1.s = 2;
                        if (r10.n(fileReadScope, fileStorageConnection$writeScope$1) != coroutineSingletons) {
                        }
                        return coroutineSingletons;
                    } catch (Throwable th5) {
                        th = th5;
                        fileWriteScope = fileReadScope;
                        fileWriteScope.close();
                        throw th;
                    }
                    fileReadScope = new FileReadScope(r3);
                } catch (IOException e) {
                    e = e;
                    if (r3.exists()) {
                        r3.delete();
                    }
                    throw e;
                }
                if (i == 0) {
                }
                r3 = new File(this.a.getAbsolutePath() + ".tmp");
            } catch (Throwable th6) {
                th = th6;
                r11.h(null);
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            r11 = coroutineSingletons;
            r11.h(null);
            throw th;
        }
        fileStorageConnection$writeScope$1 = new FileStorageConnection$writeScope$1(this, continuationImpl);
        r11 = fileStorageConnection$writeScope$1.q;
        coroutineSingletons = CoroutineSingletons.j;
        i = fileStorageConnection$writeScope$1.s;
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.d.set(true);
        ((FileStorage$createConnection$2) this.c).a();
    }
}
