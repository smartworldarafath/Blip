package androidx.media3.exoplayer.source;

import android.content.Context;
import androidx.media3.datasource.DefaultDataSource;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultMediaSourceFactory {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DelegateFactoryLoader {
        public final HashMap a = new HashMap();
        public final HashMap b = new HashMap();
        public DefaultDataSource.Factory c;
    }

    public DefaultMediaSourceFactory(Context context) {
        DefaultDataSource.Factory factory = new DefaultDataSource.Factory(context);
        DelegateFactoryLoader delegateFactoryLoader = new DelegateFactoryLoader();
        if (factory != delegateFactoryLoader.c) {
            delegateFactoryLoader.c = factory;
            delegateFactoryLoader.a.clear();
            delegateFactoryLoader.b.clear();
        }
    }
}
