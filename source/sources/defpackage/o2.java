package defpackage;

import android.os.Parcelable;
import android.util.SparseArray;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o2 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ViewFactoryHolder k;

    public /* synthetic */ o2(ViewFactoryHolder viewFactoryHolder, int i) {
        this.j = i;
        this.k = viewFactoryHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        ViewFactoryHolder viewFactoryHolder = this.k;
        switch (i) {
            case 0:
                AndroidViewHolder.j(viewFactoryHolder);
                return unit;
            case 1:
                viewFactoryHolder.I.G();
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                int i2 = ViewFactoryHolder.Q;
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                viewFactoryHolder.K.saveHierarchyState(sparseArray);
                return sparseArray;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ViewFactoryHolder.n(viewFactoryHolder);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                viewFactoryHolder.O.b(viewFactoryHolder.K);
                return unit;
            default:
                viewFactoryHolder.N.b(viewFactoryHolder.K);
                return unit;
        }
    }
}
