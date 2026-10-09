package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintAttribute {
    public AttributeType a;
    public int b;
    public float c;
    public String d;
    public boolean e;
    public int f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AttributeType {
        public static final AttributeType j;
        public static final AttributeType k;
        public static final AttributeType l;
        public static final AttributeType m;
        public static final AttributeType n;
        public static final AttributeType o;
        public static final AttributeType p;
        public static final /* synthetic */ AttributeType[] q;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        static {
            ?? r0 = new Enum("INT_TYPE", 0);
            j = r0;
            ?? r1 = new Enum("FLOAT_TYPE", 1);
            k = r1;
            ?? r2 = new Enum("COLOR_TYPE", 2);
            l = r2;
            ?? r3 = new Enum("COLOR_DRAWABLE_TYPE", 3);
            m = r3;
            ?? r4 = new Enum("STRING_TYPE", 4);
            n = r4;
            ?? r5 = new Enum("BOOLEAN_TYPE", 5);
            o = r5;
            ?? r6 = new Enum("DIMENSION_TYPE", 6);
            p = r6;
            q = new AttributeType[]{r0, r1, r2, r3, r4, r5, r6};
        }

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) q.clone();
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        constraintAttribute.getClass();
        this.a = constraintAttribute.a;
        b(obj);
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintAttribute] */
    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.c);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        AttributeType attributeType = null;
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.o;
            } else if (index == 3) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                attributeType = AttributeType.l;
            } else if (index == 2) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                attributeType = AttributeType.m;
            } else {
                AttributeType attributeType2 = AttributeType.p;
                if (index == 7) {
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    attributeType = AttributeType.k;
                } else if (index == 6) {
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    attributeType = AttributeType.j;
                } else if (index == 8) {
                    obj = obtainStyledAttributes.getString(index);
                    attributeType = AttributeType.n;
                }
                attributeType = attributeType2;
            }
        }
        if (str != null && obj != null) {
            ?? obj2 = new Object();
            obj2.a = attributeType;
            obj2.b(obj);
            hashMap.put(str, obj2);
        }
        obtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (this.a.ordinal()) {
            case 0:
                this.b = ((Integer) obj).intValue();
                return;
            case 1:
                this.c = ((Float) obj).floatValue();
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                this.f = ((Integer) obj).intValue();
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                this.d = (String) obj;
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                this.e = ((Boolean) obj).booleanValue();
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                this.c = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
