package kotlin.text;

import defpackage.fe;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.IntProgression;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(Object obj, Object obj2) {
        Object obj3;
        Pair pair;
        Object obj4;
        int i = this.j;
        Object obj5 = this.k;
        switch (i) {
            case 0:
                CharSequence charSequence = (CharSequence) obj;
                int intValue = ((Integer) obj2).intValue();
                charSequence.getClass();
                int d = StringsKt__StringsKt.d(charSequence, (char[]) obj5, intValue, false);
                if (d < 0) {
                    return null;
                }
                return new Pair(Integer.valueOf(d), 1);
            default:
                List list = (List) obj5;
                CharSequence charSequence2 = (CharSequence) obj;
                int intValue2 = ((Integer) obj2).intValue();
                charSequence2.getClass();
                if (list.size() == 1) {
                    int size = list.size();
                    if (size != 0) {
                        if (size == 1) {
                            String str = (String) list.get(0);
                            int r = StringsKt.r(charSequence2, str, intValue2, false, 4);
                            if (r >= 0) {
                                pair = new Pair(Integer.valueOf(r), str);
                                if (pair != null) {
                                    return null;
                                }
                                return new Pair(pair.j, Integer.valueOf(((String) pair.k).length()));
                            }
                            pair = null;
                            if (pair != null) {
                            }
                        } else {
                            u2.g("List has more than one element.");
                            return null;
                        }
                    } else {
                        fe.o("List is empty.");
                        return null;
                    }
                } else {
                    if (intValue2 < 0) {
                        intValue2 = 0;
                    }
                    IntProgression intProgression = new IntProgression(intValue2, charSequence2.length(), 1);
                    boolean z = charSequence2 instanceof String;
                    int i2 = intProgression.l;
                    int i3 = intProgression.k;
                    if (z) {
                        if ((i2 > 0 && intValue2 <= i3) || (i2 < 0 && i3 <= intValue2)) {
                            while (true) {
                                Iterator it = list.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        obj4 = it.next();
                                        String str2 = (String) obj4;
                                        if (str2.regionMatches(0, (String) charSequence2, intValue2, str2.length())) {
                                        }
                                    } else {
                                        obj4 = null;
                                    }
                                }
                                String str3 = (String) obj4;
                                if (str3 != null) {
                                    pair = new Pair(Integer.valueOf(intValue2), str3);
                                } else if (intValue2 != i3) {
                                    intValue2 += i2;
                                }
                            }
                        }
                        pair = null;
                        if (pair != null) {
                        }
                    } else {
                        if ((i2 > 0 && intValue2 <= i3) || (i2 < 0 && i3 <= intValue2)) {
                            int i4 = intValue2;
                            while (true) {
                                Iterator it2 = list.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        obj3 = it2.next();
                                        String str4 = (String) obj3;
                                        if (StringsKt__StringsKt.e(str4, 0, charSequence2, i4, str4.length(), false)) {
                                        }
                                    } else {
                                        obj3 = null;
                                    }
                                }
                                String str5 = (String) obj3;
                                if (str5 != null) {
                                    pair = new Pair(Integer.valueOf(i4), str5);
                                } else if (i4 != i3) {
                                    i4 += i2;
                                }
                            }
                        }
                        pair = null;
                        if (pair != null) {
                        }
                    }
                }
        }
    }
}
