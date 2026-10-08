package androidx.datastore.core;

import androidx.datastore.preferences.core.PreferencesFileSerializer;
import defpackage.u2;
import java.io.FileOutputStream;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileWriteScope<T> extends FileReadScope<T> implements WriteScope<T> {
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, ContinuationImpl continuationImpl) {
        FileWriteScope$writeData$1 fileWriteScope$writeData$1;
        int i;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (continuationImpl instanceof FileWriteScope$writeData$1) {
            fileWriteScope$writeData$1 = (FileWriteScope$writeData$1) continuationImpl;
            int i2 = fileWriteScope$writeData$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileWriteScope$writeData$1.q = i2 - Integer.MIN_VALUE;
                Object obj2 = fileWriteScope$writeData$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = fileWriteScope$writeData$1.q;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i == 1) {
                        fileOutputStream2 = fileWriteScope$writeData$1.n;
                        fileOutputStream = fileWriteScope$writeData$1.m;
                        try {
                            ResultKt.b(obj2);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    if (!this.b.get()) {
                        FileOutputStream fileOutputStream3 = new FileOutputStream(this.a);
                        try {
                            PreferencesFileSerializer preferencesFileSerializer = PreferencesFileSerializer.a;
                            UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream3);
                            fileWriteScope$writeData$1.m = fileOutputStream3;
                            fileWriteScope$writeData$1.n = fileOutputStream3;
                            fileWriteScope$writeData$1.q = 1;
                            preferencesFileSerializer.b(obj, uncloseableOutputStream);
                            if (unit == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            fileOutputStream2 = fileOutputStream3;
                            fileOutputStream = fileOutputStream2;
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream = fileOutputStream3;
                            throw th;
                        }
                    } else {
                        u2.l("This scope has already been closed.");
                        return null;
                    }
                }
                fileOutputStream2.getFD().sync();
                CloseableKt.a(fileOutputStream, null);
                return unit;
            }
        }
        fileWriteScope$writeData$1 = new FileWriteScope$writeData$1(this, continuationImpl);
        Object obj22 = fileWriteScope$writeData$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = fileWriteScope$writeData$1.q;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        fileOutputStream2.getFD().sync();
        CloseableKt.a(fileOutputStream, null);
        return unit2;
    }
}
