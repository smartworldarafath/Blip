package androidx.compose.ui.graphics;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayerV23;
import androidx.compose.ui.graphics.layer.GraphicsLayerV29;
import androidx.compose.ui.graphics.layer.GraphicsViewLayer;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.layer.view.ViewLayerContainer;
import androidx.compose.ui.platform.AndroidComposeView;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidGraphicsContext implements GraphicsContext {
    public static boolean f = true;
    public final AndroidComposeView a;
    public final Object b = new Object();
    public ViewLayerContainer c;
    public boolean d;
    public final AnonymousClass1 e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.graphics.AndroidGraphicsContext$1, android.content.ComponentCallbacks, java.lang.Object] */
    public AndroidGraphicsContext(AndroidComposeView androidComposeView) {
        this.a = androidComposeView;
        ?? obj = new Object();
        this.e = obj;
        if (androidComposeView.isAttachedToWindow()) {
            Context context = androidComposeView.getContext();
            if (!this.d) {
                context.getApplicationContext().registerComponentCallbacks(obj);
                this.d = true;
            }
        }
        androidComposeView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.graphics.AndroidGraphicsContext.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                Context context2 = view.getContext();
                AndroidGraphicsContext androidGraphicsContext = AndroidGraphicsContext.this;
                if (!androidGraphicsContext.d) {
                    context2.getApplicationContext().registerComponentCallbacks(androidGraphicsContext.e);
                    androidGraphicsContext.d = true;
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                Context context2 = view.getContext();
                AndroidGraphicsContext androidGraphicsContext = AndroidGraphicsContext.this;
                if (androidGraphicsContext.d) {
                    context2.getApplicationContext().unregisterComponentCallbacks(androidGraphicsContext.e);
                    androidGraphicsContext.d = false;
                }
            }
        });
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final void a(GraphicsLayer graphicsLayer) {
        synchronized (this.b) {
            if (!graphicsLayer.s) {
                graphicsLayer.s = true;
                graphicsLayer.b();
            }
        }
    }

    @Override // androidx.compose.ui.graphics.GraphicsContext
    public final GraphicsLayer b() {
        GraphicsLayerImpl graphicsViewLayer;
        GraphicsLayerImpl graphicsLayerImpl;
        GraphicsLayer graphicsLayer;
        synchronized (this.b) {
            try {
                AndroidComposeView androidComposeView = this.a;
                int i = Build.VERSION.SDK_INT;
                if (i >= 29) {
                    androidComposeView.getUniqueDrawingId();
                }
                if (i >= 29) {
                    graphicsLayerImpl = new GraphicsLayerV29();
                } else {
                    if (f) {
                        try {
                            graphicsViewLayer = new GraphicsLayerV23(this.a, new CanvasHolder(), new CanvasDrawScope());
                        } catch (Throwable unused) {
                            f = false;
                            graphicsViewLayer = new GraphicsViewLayer(c(this.a));
                        }
                    } else {
                        graphicsViewLayer = new GraphicsViewLayer(c(this.a));
                    }
                    graphicsLayerImpl = graphicsViewLayer;
                }
                graphicsLayer = new GraphicsLayer(graphicsLayerImpl);
            } catch (Throwable th) {
                throw th;
            }
        }
        return graphicsLayer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.ui.graphics.layer.view.ViewLayerContainer, android.view.View, androidx.compose.ui.graphics.layer.view.DrawChildContainer, android.view.ViewGroup] */
    public final DrawChildContainer c(AndroidComposeView androidComposeView) {
        ViewLayerContainer viewLayerContainer = this.c;
        if (viewLayerContainer == null) {
            ?? viewGroup = new ViewGroup(androidComposeView.getContext());
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            viewGroup.setTag(R.id.hide_graphics_layer_in_inspector_tag, Boolean.TRUE);
            androidComposeView.addView((View) viewGroup, -1);
            this.c = viewGroup;
            return viewGroup;
        }
        return viewLayerContainer;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.compose.ui.graphics.AndroidGraphicsContext$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements ComponentCallbacks2 {
        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i) {
        }
    }
}
