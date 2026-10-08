package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import defpackage.u2;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        public static final Class[] c = {MenuItem.class};
        public Object a;
        public Method b;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Object obj = this.a;
            Method method = this.b;
            try {
                if (method.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class MenuState {
        public CharSequence A;
        public final Menu a;
        public boolean h;
        public int i;
        public int j;
        public CharSequence k;
        public CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public CharSequence z;
        public ColorStateList B = null;
        public PorterDuff.Mode C = null;
        public int b = 0;
        public int c = 0;
        public int d = 0;
        public int e = 0;
        public boolean f = true;
        public boolean g = true;

        public MenuState(Menu menu) {
            this.a = menu;
        }

        public final Object a(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v22, types: [android.view.MenuItem$OnMenuItemClickListener, androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener, java.lang.Object] */
        public final void b(MenuItem menuItem) {
            boolean z;
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            Context context = supportMenuInflater.c;
            MenuItem enabled = menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u);
            boolean z2 = false;
            if (this.r >= 1) {
                z = true;
            } else {
                z = false;
            }
            enabled.setCheckable(z).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.y != null) {
                if (!context.isRestricted()) {
                    if (supportMenuInflater.d == null) {
                        supportMenuInflater.d = SupportMenuInflater.a(context);
                    }
                    Object obj = supportMenuInflater.d;
                    String str = this.y;
                    ?? obj2 = new Object();
                    obj2.a = obj;
                    Class<?> cls = obj.getClass();
                    try {
                        obj2.b = cls.getMethod(str, InflatedOnMenuItemClickListener.c);
                        menuItem.setOnMenuItemClickListener(obj2);
                    } catch (Exception e) {
                        InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                        inflateException.initCause(e);
                        throw inflateException;
                    }
                } else {
                    u2.l("The android:onClick attribute cannot be used within a restricted context");
                    return;
                }
            }
            if (this.r >= 2 && (menuItem instanceof MenuItemImpl)) {
                MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
                menuItemImpl.x = (menuItemImpl.x & (-5)) | 4;
            }
            String str2 = this.x;
            if (str2 != null) {
                menuItem.setActionView((View) a(str2, SupportMenuInflater.e, supportMenuInflater.a));
                z2 = true;
            }
            int i2 = this.w;
            if (i2 > 0) {
                if (!z2) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            CharSequence charSequence = this.z;
            boolean z3 = menuItem instanceof SupportMenuItem;
            if (z3) {
                ((SupportMenuItem) menuItem).setContentDescription(charSequence);
            } else {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.A;
            if (z3) {
                ((SupportMenuItem) menuItem).setTooltipText(charSequence2);
            } else {
                menuItem.setTooltipText(charSequence2);
            }
            char c = this.n;
            int i3 = this.o;
            if (z3) {
                ((SupportMenuItem) menuItem).setAlphabeticShortcut(c, i3);
            } else {
                menuItem.setAlphabeticShortcut(c, i3);
            }
            char c2 = this.p;
            int i4 = this.q;
            if (z3) {
                ((SupportMenuItem) menuItem).setNumericShortcut(c2, i4);
            } else {
                menuItem.setNumericShortcut(c2, i4);
            }
            PorterDuff.Mode mode = this.C;
            if (mode != null) {
                if (z3) {
                    ((SupportMenuItem) menuItem).setIconTintMode(mode);
                } else {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.B;
            if (colorStateList != null) {
                if (z3) {
                    ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
                } else {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if (r3 == 1) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
    
        r15 = r2.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
    
        if (r3 == r5) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        if (r3 == 3) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        r8 = r17;
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x022f, code lost:
    
        r3 = r8.next();
        r5 = 2;
        r9 = r9;
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        r3 = r17.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r10 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r3.equals(r11) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        r8 = r17;
        r10 = false;
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r3.equals("group") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        r2.b = 0;
        r2.c = 0;
        r2.d = 0;
        r2.e = 0;
        r2.f = true;
        r2.g = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        if (r3.equals("item") == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        if (r2.h != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        r2.h = true;
        r2.b(r15.add(r2.b, r2.i, r2.j, r2.k));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
    
        if (r3.equals("menu") == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0092, code lost:
    
        r8 = r17;
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0098, code lost:
    
        if (r10 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
    
        r3 = r17.getName();
        r13 = r3.equals("group");
        r8 = r16.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
    
        if (r13 == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a8, code lost:
    
        r3 = r8.obtainStyledAttributes(r18, androidx.appcompat.R$styleable.m);
        r2.b = r3.getResourceId(1, 0);
        r2.c = r3.getInt(3, 0);
        r2.d = r3.getInt(4, 0);
        r2.e = r3.getInt(5, 0);
        r2.f = r3.getBoolean(2, true);
        r2.g = r3.getBoolean(0, true);
        r3.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dd, code lost:
    
        if (r3.equals("item") == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00df, code lost:
    
        r12 = r8.obtainStyledAttributes(r18, androidx.appcompat.R$styleable.n);
        r3 = new androidx.appcompat.widget.TintTypedArray(r8, r12);
        r2.i = r12.getResourceId(2, 0);
        r2.j = (r12.getInt(6, r2.d) & 65535) | (r12.getInt(5, r2.c) & (-65536));
        r2.k = r12.getText(7);
        r2.l = r12.getText(8);
        r2.m = r12.getResourceId(0, 0);
        r8 = r12.getString(9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0124, code lost:
    
        if (r8 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0126, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012c, code lost:
    
        r2.n = r8;
        r2.o = r12.getInt(16, 4096);
        r8 = r12.getString(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x013e, code lost:
    
        if (r8 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0140, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0146, code lost:
    
        r2.p = r8;
        r2.q = r12.getInt(20, 4096);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0156, code lost:
    
        if (r12.hasValue(11) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0158, code lost:
    
        r2.r = r12.getBoolean(11, false) ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0163, code lost:
    
        r2.s = r12.getBoolean(3, false);
        r2.t = r12.getBoolean(4, r2.f);
        r2.u = r12.getBoolean(1, r2.g);
        r2.v = r12.getInt(21, -1);
        r2.y = r12.getString(12);
        r2.w = r12.getResourceId(13, 0);
        r2.x = r12.getString(15);
        r5 = r12.getString(14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a0, code lost:
    
        if (r5 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a2, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a5, code lost:
    
        if (r13 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01a9, code lost:
    
        if (r2.w != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ad, code lost:
    
        if (r2.x != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01b7, code lost:
    
        if (r2.a(r5, androidx.appcompat.view.SupportMenuInflater.f, r16.b) != null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01c7, code lost:
    
        r2.z = r12.getText(17);
        r2.A = r12.getText(22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01dd, code lost:
    
        if (r12.hasValue(19) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01df, code lost:
    
        r2.C = androidx.appcompat.widget.DrawableUtils.b(r12.getInt(19, -1), r2.C);
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01f6, code lost:
    
        if (r12.hasValue(18) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01f8, code lost:
    
        r2.B = r3.a(18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0201, code lost:
    
        r3.e();
        r2.h = false;
        r8 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ff, code lost:
    
        r2.B = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ed, code lost:
    
        r5 = null;
        r2.C = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01ba, code lost:
    
        io.sentry.d.i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01bd, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01be, code lost:
    
        if (r13 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01c0, code lost:
    
        android.util.Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a4, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x015f, code lost:
    
        r2.r = r2.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0142, code lost:
    
        r8 = r8.charAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0128, code lost:
    
        r8 = r8.charAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x020e, code lost:
    
        if (r3.equals("menu") == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0210, code lost:
    
        r2.h = true;
        r3 = r15.addSubMenu(r2.b, r2.i, r2.j, r2.k);
        r2.b(r3.getItem());
        r8 = r17;
        b(r8, r18, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x022b, code lost:
    
        r8 = r17;
        r11 = r3;
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0236, code lost:
    
        defpackage.u2.n("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x023b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        r9 = false;
        r10 = false;
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (r9 != false) goto L91;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        MenuState menuState = new MenuState(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            int i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    u2.n("Expecting menu, got ".concat(name));
                    return;
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.c.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (!menuBuilder.n) {
                        menuBuilder.s();
                        z = true;
                    }
                }
                b(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((MenuBuilder) menu).r();
                }
                xmlResourceParser.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((MenuBuilder) menu).r();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
