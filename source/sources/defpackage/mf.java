package defpackage;

import android.content.Context;
import coil3.ComponentRegistry;
import coil3.Extras;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.SingletonImageLoaderKt;
import coil3.request.ImageRequest;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class mf implements SingletonImageLoader.Factory {
    public final RealImageLoader a(Context context) {
        mf mfVar = SingletonImageLoaderKt.a;
        ImageLoader.Builder builder = new ImageLoader.Builder(context);
        Extras.Key key = SingletonImageLoaderKt.b;
        Unit unit = Unit.a;
        Extras.Builder builder2 = builder.c;
        builder2.b(key, unit);
        Extras a = builder2.a();
        ImageRequest.Defaults defaults = builder.b;
        ImageRequest.Defaults defaults2 = new ImageRequest.Defaults(defaults.a, defaults.b, defaults.c, defaults.d, defaults.e, defaults.f, defaults.g, defaults.h, defaults.i, defaults.j, defaults.k, defaults.l, defaults.m, a);
        Lazy b = LazyKt.b(new j6(25));
        Lazy b2 = LazyKt.b(new r1(20, builder));
        Lazy b3 = LazyKt.b(new j6(26));
        EmptyList emptyList = EmptyList.j;
        return new RealImageLoader(new RealImageLoader.Options(builder.a, defaults2, b, b2, b3, new ComponentRegistry(emptyList, emptyList, emptyList, emptyList, emptyList)));
    }
}
