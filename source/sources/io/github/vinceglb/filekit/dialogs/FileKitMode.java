package io.github.vinceglb.filekit.dialogs;

import defpackage.u2;
import io.github.vinceglb.filekit.PlatformFile;
import io.github.vinceglb.filekit.dialogs.FileKitPickerState;
import io.github.vinceglb.filekit.dialogs.PickerMode;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKitMode<PickerResult, ConsumedResult> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Multiple extends FileKitMode<List<? extends PlatformFile>, List<? extends PlatformFile>> {
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, io.github.vinceglb.filekit.dialogs.PickerMode] */
        @Override // io.github.vinceglb.filekit.dialogs.FileKitMode
        public final PickerMode a() {
            return new Object();
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @Override // io.github.vinceglb.filekit.dialogs.FileKitMode
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object b(Flow flow, ContinuationImpl continuationImpl) {
            FileKitMode$Multiple$parseResult$1 fileKitMode$Multiple$parseResult$1;
            int i;
            FileKitPickerState fileKitPickerState;
            if (continuationImpl instanceof FileKitMode$Multiple$parseResult$1) {
                fileKitMode$Multiple$parseResult$1 = (FileKitMode$Multiple$parseResult$1) continuationImpl;
                int i2 = fileKitMode$Multiple$parseResult$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    fileKitMode$Multiple$parseResult$1.o = i2 - Integer.MIN_VALUE;
                    Object obj = fileKitMode$Multiple$parseResult$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = fileKitMode$Multiple$parseResult$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        fileKitMode$Multiple$parseResult$1.o = 1;
                        obj = FlowKt.q(flow, fileKitMode$Multiple$parseResult$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    fileKitPickerState = (FileKitPickerState) obj;
                    if (fileKitPickerState instanceof FileKitPickerState.Completed) {
                        List list = (List) ((FileKitPickerState.Completed) fileKitPickerState).a;
                        if (!list.isEmpty()) {
                            return list;
                        }
                    }
                    return null;
                }
            }
            fileKitMode$Multiple$parseResult$1 = new FileKitMode$Multiple$parseResult$1(this, continuationImpl);
            Object obj2 = fileKitMode$Multiple$parseResult$1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = fileKitMode$Multiple$parseResult$1.o;
            if (i == 0) {
            }
            fileKitPickerState = (FileKitPickerState) obj2;
            if (fileKitPickerState instanceof FileKitPickerState.Completed) {
            }
            return null;
        }

        public final boolean equals(Object obj) {
            if (this != obj && !(obj instanceof Multiple)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "Multiple(maxItems=null)";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Single extends FileKitMode<PlatformFile, PlatformFile> {
        public static final Single a = new Object();

        @Override // io.github.vinceglb.filekit.dialogs.FileKitMode
        public final PickerMode a() {
            return PickerMode.Single.a;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @Override // io.github.vinceglb.filekit.dialogs.FileKitMode
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object b(Flow flow, ContinuationImpl continuationImpl) {
            FileKitMode$Single$parseResult$1 fileKitMode$Single$parseResult$1;
            int i;
            FileKitPickerState fileKitPickerState;
            if (continuationImpl instanceof FileKitMode$Single$parseResult$1) {
                fileKitMode$Single$parseResult$1 = (FileKitMode$Single$parseResult$1) continuationImpl;
                int i2 = fileKitMode$Single$parseResult$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    fileKitMode$Single$parseResult$1.o = i2 - Integer.MIN_VALUE;
                    Object obj = fileKitMode$Single$parseResult$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = fileKitMode$Single$parseResult$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        fileKitMode$Single$parseResult$1.o = 1;
                        obj = FlowKt.q(flow, fileKitMode$Single$parseResult$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    fileKitPickerState = (FileKitPickerState) obj;
                    if (fileKitPickerState instanceof FileKitPickerState.Completed) {
                        return null;
                    }
                    return (PlatformFile) CollectionsKt.t((List) ((FileKitPickerState.Completed) fileKitPickerState).a);
                }
            }
            fileKitMode$Single$parseResult$1 = new FileKitMode$Single$parseResult$1(this, continuationImpl);
            Object obj2 = fileKitMode$Single$parseResult$1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = fileKitMode$Single$parseResult$1.o;
            if (i == 0) {
            }
            fileKitPickerState = (FileKitPickerState) obj2;
            if (fileKitPickerState instanceof FileKitPickerState.Completed) {
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Single)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -2128816133;
        }

        public final String toString() {
            return "Single";
        }
    }

    public abstract PickerMode a();

    public abstract Object b(Flow flow, ContinuationImpl continuationImpl);
}
