package defpackage;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.blip.android.MainActivity;
import net.blip.android.ReviewRequestPrompt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class va implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MainActivity k;

    public /* synthetic */ va(MainActivity mainActivity, int i) {
        this.j = i;
        this.k = mainActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        MainActivity mainActivity = this.k;
        switch (i) {
            case 0:
                String str = MainActivity.G;
                Context applicationContext = mainActivity.getApplicationContext();
                applicationContext.getClass();
                return new ReviewRequestPrompt(applicationContext);
            case 1:
                mainActivity.E = true;
                return unit;
            default:
                String str2 = MainActivity.G;
                mainActivity.finish();
                return unit;
        }
    }
}
