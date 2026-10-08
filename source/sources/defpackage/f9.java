package defpackage;

import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.UriHandler;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f9 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ UriHandler k;
    public final /* synthetic */ String l;

    public /* synthetic */ f9(UriHandler uriHandler, String str, int i) {
        this.j = i;
        this.k = uriHandler;
        this.l = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        String str = this.l;
        UriHandler uriHandler = this.k;
        switch (i) {
            case 0:
                ((AndroidUriHandler) uriHandler).a(str);
                return unit;
            default:
                ((AndroidUriHandler) uriHandler).a(str);
                return unit;
        }
    }
}
