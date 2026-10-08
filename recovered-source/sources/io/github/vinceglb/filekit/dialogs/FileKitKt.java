package io.github.vinceglb.filekit.dialogs;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKitKt {
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        if (r8 == r1) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(FileKitType fileKitType, FileKitMode fileKitMode, ContinuationImpl continuationImpl) {
        FileKitKt$openFilePicker$1 fileKitKt$openFilePicker$1;
        Object obj;
        int i;
        FileKitMode fileKitMode2;
        Object b;
        if (continuationImpl instanceof FileKitKt$openFilePicker$1) {
            FileKitKt$openFilePicker$1 fileKitKt$openFilePicker$12 = (FileKitKt$openFilePicker$1) continuationImpl;
            int i2 = fileKitKt$openFilePicker$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileKitKt$openFilePicker$12.o = i2 - Integer.MIN_VALUE;
                fileKitKt$openFilePicker$1 = fileKitKt$openFilePicker$12;
                Object obj2 = fileKitKt$openFilePicker$1.n;
                obj = CoroutineSingletons.j;
                i = fileKitKt$openFilePicker$1.o;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj2);
                            return obj2;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    FileKitMode fileKitMode3 = fileKitKt$openFilePicker$1.m;
                    ResultKt.b(obj2);
                    fileKitMode2 = fileKitMode3;
                } else {
                    ResultKt.b(obj2);
                    PickerMode a = fileKitMode.a();
                    fileKitKt$openFilePicker$1.m = fileKitMode;
                    fileKitKt$openFilePicker$1.o = 1;
                    obj2 = FileKit_androidKt.d(fileKitType, a, fileKitKt$openFilePicker$1);
                    fileKitMode2 = fileKitMode;
                }
                fileKitKt$openFilePicker$1.m = null;
                fileKitKt$openFilePicker$1.o = 2;
                b = fileKitMode2.b((Flow) obj2, fileKitKt$openFilePicker$1);
                if (b != obj) {
                    return obj;
                }
                return b;
            }
        }
        fileKitKt$openFilePicker$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = fileKitKt$openFilePicker$1.n;
        obj = CoroutineSingletons.j;
        i = fileKitKt$openFilePicker$1.o;
        if (i == 0) {
        }
        fileKitKt$openFilePicker$1.m = null;
        fileKitKt$openFilePicker$1.o = 2;
        b = fileKitMode2.b((Flow) obj22, fileKitKt$openFilePicker$1);
        if (b != obj) {
        }
    }
}
