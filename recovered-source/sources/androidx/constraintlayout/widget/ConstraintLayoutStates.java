package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintLayoutStates {
    public SparseArray a;
    public SparseArray b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class State {
        public final int a;
        public final ArrayList b = new ArrayList();
        public final int c;

        public State(Context context, XmlResourceParser xmlResourceParser) {
            this.c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.g);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.a = obtainStyledAttributes.getResourceId(index, this.a);
                } else if (index == 1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.c);
                    this.c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        new ConstraintSet().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Variant {
        public final float a;
        public final float b;
        public final float c;
        public final float d;
        public final int e;

        public Variant(Context context, XmlResourceParser xmlResourceParser) {
            this.a = Float.NaN;
            this.b = Float.NaN;
            this.c = Float.NaN;
            this.d = Float.NaN;
            this.e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.i);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.e);
                    this.e = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        new ConstraintSet().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                } else if (index == 1) {
                    this.d = obtainStyledAttributes.getDimension(index, this.d);
                } else if (index == 2) {
                    this.b = obtainStyledAttributes.getDimension(index, this.b);
                } else if (index == 3) {
                    this.c = obtainStyledAttributes.getDimension(index, this.c);
                } else if (index == 4) {
                    this.a = obtainStyledAttributes.getDimension(index, this.a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c1, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Context context, XmlResourceParser xmlResourceParser) {
        int i;
        int eventType;
        ConstraintSet.Constraint constraint;
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i2))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i2);
                if (attributeValue.contains("/")) {
                    i = context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName());
                } else {
                    i = -1;
                }
                if (i == -1) {
                    if (attributeValue.length() > 1) {
                        i = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    eventType = xmlResourceParser.getEventType();
                    constraint = null;
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                }
                while (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType != 2) {
                            if (eventType != 3) {
                                continue;
                            } else {
                                String name = xmlResourceParser.getName();
                                if (!"ConstraintSet".equals(name)) {
                                    if (name.equalsIgnoreCase("Constraint")) {
                                        constraintSet.c.put(Integer.valueOf(constraint.a), constraint);
                                        constraint = null;
                                    }
                                } else {
                                    this.b.put(i, constraintSet);
                                    return;
                                }
                            }
                        } else {
                            String name2 = xmlResourceParser.getName();
                            switch (name2.hashCode()) {
                                case -2025855158:
                                    if (!name2.equals("Layout")) {
                                        continue;
                                    } else if (constraint != null) {
                                        constraint.d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                        break;
                                    } else {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                case -1984451626:
                                    if (!name2.equals("Motion")) {
                                        continue;
                                    } else if (constraint != null) {
                                        constraint.c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                        break;
                                    } else {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                case -1269513683:
                                    if (!name2.equals("PropertySet")) {
                                        continue;
                                    } else if (constraint != null) {
                                        constraint.b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                        break;
                                    } else {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                case -1238332596:
                                    if (!name2.equals("Transform")) {
                                        continue;
                                    } else if (constraint != null) {
                                        constraint.e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                        break;
                                    } else {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                case -71750448:
                                    if (name2.equals("Guideline")) {
                                        constraint = ConstraintSet.d(context, Xml.asAttributeSet(xmlResourceParser));
                                        constraint.d.a = true;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1331510167:
                                    if (name2.equals("Barrier")) {
                                        constraint = ConstraintSet.d(context, Xml.asAttributeSet(xmlResourceParser));
                                        constraint.d.c0 = 1;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1791837707:
                                    if (!name2.equals("CustomAttribute")) {
                                        continue;
                                    } else if (constraint != null) {
                                        ConstraintAttribute.a(context, xmlResourceParser, constraint.f);
                                        break;
                                    } else {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                case 1803088381:
                                    if (name2.equals("Constraint")) {
                                        constraint = ConstraintSet.d(context, Xml.asAttributeSet(xmlResourceParser));
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                        }
                    } else {
                        xmlResourceParser.getName();
                    }
                    eventType = xmlResourceParser.next();
                }
                this.b.put(i, constraintSet);
                return;
            }
        }
    }
}
