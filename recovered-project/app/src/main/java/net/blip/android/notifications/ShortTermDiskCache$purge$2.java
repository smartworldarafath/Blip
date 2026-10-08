package net.blip.android.notifications;

import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.File;
import java.io.FileFilter;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.TemporalAmount;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.ShortTermDiskCache$purge$2", f = "FirebaseNotificationService.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ShortTermDiskCache$purge$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ShortTermDiskCache n;
    public final /* synthetic */ Duration o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTermDiskCache$purge$2(ShortTermDiskCache shortTermDiskCache, Duration duration, Continuation continuation) {
        super(2, continuation);
        this.n = shortTermDiskCache;
        this.o = duration;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ShortTermDiskCache$purge$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ShortTermDiskCache$purge$2(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        File file = this.n.a;
        final Duration duration = this.o;
        File[] listFiles = file.listFiles(new FileFilter() { // from class: lf
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                if (file2.lastModified() < Instant.now().minus((TemporalAmount) duration).toEpochMilli()) {
                    return true;
                }
                return false;
            }
        });
        if (listFiles != null) {
            for (File file2 : listFiles) {
                file2.delete();
            }
            return Unit.a;
        }
        return null;
    }
}
