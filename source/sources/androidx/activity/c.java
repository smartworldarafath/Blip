package androidx.activity;

import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import kotlin.jvm.functions.Function1;
import net.blip.android.MainActivity;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {
    public final /* synthetic */ EdgeToEdgeImpl j;
    public final /* synthetic */ SystemBarStyle k;
    public final /* synthetic */ SystemBarStyle l;
    public final /* synthetic */ MainActivity m;
    public final /* synthetic */ View n;

    public /* synthetic */ c(EdgeToEdgeImpl edgeToEdgeImpl, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, MainActivity mainActivity, View view) {
        this.j = edgeToEdgeImpl;
        this.k = systemBarStyle;
        this.l = systemBarStyle2;
        this.m = mainActivity;
        this.n = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = EdgeToEdge.a;
        Window window = this.m.getWindow();
        window.getClass();
        SystemBarStyle systemBarStyle = this.k;
        Function1 function1 = systemBarStyle.c;
        View view = this.n;
        Resources resources = view.getResources();
        resources.getClass();
        boolean booleanValue = ((Boolean) function1.b(resources)).booleanValue();
        SystemBarStyle systemBarStyle2 = this.l;
        Function1 function12 = systemBarStyle2.c;
        Resources resources2 = view.getResources();
        resources2.getClass();
        this.j.a(systemBarStyle, systemBarStyle2, window, view, booleanValue, ((Boolean) function12.b(resources2)).booleanValue());
    }
}
