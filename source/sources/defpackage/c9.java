package defpackage;

import android.content.Context;
import android.provider.Settings;
import android.widget.Toast;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c9 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Context k;

    public /* synthetic */ c9(Context context, int i) {
        this.j = i;
        this.k = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        Context context = this.k;
        switch (i) {
            case 0:
                return Settings.Secure.getString(context.getContentResolver(), "android_id");
            case 1:
                Toast.makeText(context, "Blip notifications are...", 0).show();
                return unit;
            default:
                Toast.makeText(context, "...actually useful", 0).show();
                return unit;
        }
    }
}
