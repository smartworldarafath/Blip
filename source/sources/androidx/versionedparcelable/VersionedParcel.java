package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import defpackage.u2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VersionedParcel {
    public final ArrayMap a;
    public final ArrayMap b;
    public final ArrayMap c;

    public VersionedParcel(ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        this.a = arrayMap;
        this.b = arrayMap2;
        this.c = arrayMap3;
    }

    public abstract VersionedParcel a();

    public final Class b(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.c;
        Class cls2 = (Class) arrayMap.get(name);
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
            arrayMap.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    public final Method c(String str) {
        ArrayMap arrayMap = this.a;
        Method method = (Method) arrayMap.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            arrayMap.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final Method d(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.b;
        Method method = (Method) arrayMap.get(name);
        if (method == null) {
            Class b = b(cls);
            System.currentTimeMillis();
            Method declaredMethod = b.getDeclaredMethod("write", cls, VersionedParcel.class);
            arrayMap.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public final boolean e(int i, boolean z) {
        if (!h(i)) {
            return z;
        }
        if (((VersionedParcelParcel) this).e.readInt() != 0) {
            return true;
        }
        return false;
    }

    public final byte[] f(byte[] bArr) {
        if (!h(2)) {
            return bArr;
        }
        Parcel parcel = ((VersionedParcelParcel) this).e;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr2 = new byte[readInt];
        parcel.readByteArray(bArr2);
        return bArr2;
    }

    public final CharSequence g(CharSequence charSequence, int i) {
        if (!h(i)) {
            return charSequence;
        }
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((VersionedParcelParcel) this).e);
    }

    public abstract boolean h(int i);

    public final int i(int i, int i2) {
        if (!h(i2)) {
            return i;
        }
        return ((VersionedParcelParcel) this).e.readInt();
    }

    public final Parcelable j(Parcelable parcelable, int i) {
        if (!h(i)) {
            return parcelable;
        }
        VersionedParcelParcel versionedParcelParcel = (VersionedParcelParcel) this;
        return versionedParcelParcel.e.readParcelable(versionedParcelParcel.getClass().getClassLoader());
    }

    public final String k(int i, String str) {
        if (!h(i)) {
            return str;
        }
        return ((VersionedParcelParcel) this).e.readString();
    }

    public final VersionedParcelable l() {
        String readString = ((VersionedParcelParcel) this).e.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (VersionedParcelable) c(readString).invoke(null, a());
        } catch (ClassNotFoundException e) {
            u2.k("VersionedParcel encountered ClassNotFoundException", e);
            return null;
        } catch (IllegalAccessException e2) {
            u2.k("VersionedParcel encountered IllegalAccessException", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            u2.k("VersionedParcel encountered NoSuchMethodException", e3);
            return null;
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                u2.k("VersionedParcel encountered InvocationTargetException", e4);
                return null;
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    public abstract void m(int i);

    public final void n(int i, boolean z) {
        m(i);
        ((VersionedParcelParcel) this).e.writeInt(z ? 1 : 0);
    }

    public final void o(byte[] bArr) {
        m(2);
        Parcel parcel = ((VersionedParcelParcel) this).e;
        if (bArr != null) {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        } else {
            parcel.writeInt(-1);
        }
    }

    public final void p(CharSequence charSequence, int i) {
        m(i);
        TextUtils.writeToParcel(charSequence, ((VersionedParcelParcel) this).e, 0);
    }

    public final void q(int i, int i2) {
        m(i2);
        ((VersionedParcelParcel) this).e.writeInt(i);
    }

    public final void r(Parcelable parcelable, int i) {
        m(i);
        ((VersionedParcelParcel) this).e.writeParcelable(parcelable, 0);
    }

    public final void s(int i, String str) {
        m(i);
        ((VersionedParcelParcel) this).e.writeString(str);
    }

    public final void t(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            ((VersionedParcelParcel) this).e.writeString(null);
            return;
        }
        try {
            ((VersionedParcelParcel) this).e.writeString(b(versionedParcelable.getClass()).getName());
            VersionedParcel a = a();
            try {
                d(versionedParcelable.getClass()).invoke(null, versionedParcelable, a);
                VersionedParcelParcel versionedParcelParcel = (VersionedParcelParcel) a;
                Parcel parcel = versionedParcelParcel.e;
                int i = versionedParcelParcel.i;
                if (i >= 0) {
                    int i2 = versionedParcelParcel.d.get(i);
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                u2.k("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                u2.k("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                u2.k("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    u2.k("VersionedParcel encountered InvocationTargetException", e4);
                    return;
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            u2.k(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
