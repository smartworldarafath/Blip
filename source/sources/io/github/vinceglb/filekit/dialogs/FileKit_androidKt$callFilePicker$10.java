package io.github.vinceglb.filekit.dialogs;

import android.net.Uri;
import androidx.activity.result.ActivityResultRegistry;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import io.github.vinceglb.filekit.dialogs.FileKitType;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt$callFilePicker$10", f = "FileKit.android.kt", l = {481}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FileKit_androidKt$callFilePicker$10 extends SuspendLambda implements Function1<Continuation<? super List<Uri>>, Object> {
    public int n;
    public final /* synthetic */ ActivityResultRegistry o;
    public final /* synthetic */ FileKitType p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileKit_androidKt$callFilePicker$10(ActivityResultRegistry activityResultRegistry, FileKitType fileKitType, Continuation continuation) {
        super(1, continuation);
        this.o = activityResultRegistry;
        this.p = fileKitType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new FileKit_androidKt$callFilePicker$10(this.o, this.p, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ?? obj2 = new Object();
        String[] a = FileKitAndroidDialogsInternal.a(((FileKitType.File) this.p).a);
        this.n = 1;
        Object a2 = FileKit_androidKt.a(this.o, obj2, a, this);
        if (a2 == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a2;
    }
}
