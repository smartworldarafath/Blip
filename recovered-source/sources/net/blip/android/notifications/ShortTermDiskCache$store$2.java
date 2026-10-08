package net.blip.android.notifications;

import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.ShortTermDiskCache$store$2", f = "FirebaseNotificationService.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class ShortTermDiskCache$store$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Serializable n;
    public final /* synthetic */ File o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTermDiskCache$store$2(Serializable serializable, File file, Continuation continuation) {
        super(2, continuation);
        this.n = serializable;
        this.o = file;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ShortTermDiskCache$store$2 shortTermDiskCache$store$2 = (ShortTermDiskCache$store$2) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        shortTermDiskCache$store$2.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ShortTermDiskCache$store$2(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Unit unit = Unit.a;
        Serializable serializable = this.n;
        File file = this.o;
        if (serializable == null) {
            try {
                file.delete();
            } catch (FileNotFoundException unused) {
            }
            return unit;
        }
        file.createNewFile();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
        objectOutputStream.writeObject(serializable);
        objectOutputStream.flush();
        return unit;
    }
}
