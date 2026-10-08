package net.blip.android.ui.gallery;

import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.exoplayer.ExoPlayer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.gallery.GalleryVideoPlayerKt$GalleryVideoPlayer$1$1", f = "GalleryVideoPlayer.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class GalleryVideoPlayerKt$GalleryVideoPlayer$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ExoPlayer n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GalleryVideoPlayerKt$GalleryVideoPlayer$1$1(ExoPlayer exoPlayer, boolean z, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = exoPlayer;
        this.o = z;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        GalleryVideoPlayerKt$GalleryVideoPlayer$1$1 galleryVideoPlayerKt$GalleryVideoPlayer$1$1 = (GalleryVideoPlayerKt$GalleryVideoPlayer$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        galleryVideoPlayerKt$GalleryVideoPlayer$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new GalleryVideoPlayerKt$GalleryVideoPlayer$1$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        if (this.o && !((Boolean) this.p.getValue()).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        this.n.u(z);
        return Unit.a;
    }
}
