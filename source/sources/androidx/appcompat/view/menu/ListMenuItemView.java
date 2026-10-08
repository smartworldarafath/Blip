package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.TintTypedArray;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements MenuView$ItemView, AbsListView.SelectionBoundsAdjuster {
    public MenuItemImpl j;
    public ImageView k;
    public RadioButton l;
    public TextView m;
    public CheckBox n;
    public TextView o;
    public ImageView p;
    public ImageView q;
    public LinearLayout r;
    public final Drawable s;
    public final int t;
    public final Context u;
    public boolean v;
    public final Drawable w;
    public final boolean x;
    public LayoutInflater y;
    public boolean z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray d = TintTypedArray.d(getContext(), attributeSet, R$styleable.o, R.attr.listMenuViewStyle);
        this.s = d.b(5);
        TypedArray typedArray = d.b;
        this.t = typedArray.getResourceId(1, -1);
        this.v = typedArray.getBoolean(7, false);
        this.u = context;
        this.w = d.b(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.x = obtainStyledAttributes.hasValue(0);
        d.e();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.y == null) {
            this.y = LayoutInflater.from(getContext());
        }
        return this.y;
    }

    private void setSubMenuArrowVisible(boolean z) {
        int i;
        ImageView imageView = this.p;
        if (imageView != null) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.q;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.q.getLayoutParams();
            rect.top = this.q.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r0 == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011b  */
    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(MenuItemImpl menuItemImpl) {
        int i;
        boolean z;
        char c;
        int i2;
        String sb;
        boolean z2;
        char c2;
        char c3;
        this.j = menuItemImpl;
        boolean isVisible = menuItemImpl.isVisible();
        MenuBuilder menuBuilder = menuItemImpl.n;
        int i3 = 0;
        if (isVisible) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        setTitle(menuItemImpl.e);
        setCheckable(menuItemImpl.isCheckable());
        if (menuBuilder.n()) {
            if (menuBuilder.m()) {
                c3 = menuItemImpl.j;
            } else {
                c3 = menuItemImpl.h;
            }
            if (c3 != 0) {
                z = true;
                menuBuilder.m();
                if (z) {
                    MenuItemImpl menuItemImpl2 = this.j;
                    MenuBuilder menuBuilder2 = menuItemImpl2.n;
                    if (menuBuilder2.n()) {
                        if (menuBuilder2.m()) {
                            c2 = menuItemImpl2.j;
                        } else {
                            c2 = menuItemImpl2.h;
                        }
                        if (c2 != 0) {
                            z2 = true;
                        }
                    }
                    z2 = false;
                }
                i3 = 8;
                if (i3 == 0) {
                    TextView textView = this.o;
                    MenuItemImpl menuItemImpl3 = this.j;
                    MenuBuilder menuBuilder3 = menuItemImpl3.n;
                    Context context = menuBuilder3.a;
                    if (menuBuilder3.m()) {
                        c = menuItemImpl3.j;
                    } else {
                        c = menuItemImpl3.h;
                    }
                    if (c == 0) {
                        sb = "";
                    } else {
                        Resources resources = context.getResources();
                        StringBuilder sb2 = new StringBuilder();
                        if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                            sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                        }
                        if (menuBuilder3.m()) {
                            i2 = menuItemImpl3.k;
                        } else {
                            i2 = menuItemImpl3.i;
                        }
                        MenuItemImpl.a(sb2, i2, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                        MenuItemImpl.a(sb2, i2, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                        MenuItemImpl.a(sb2, i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                        MenuItemImpl.a(sb2, i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                        MenuItemImpl.a(sb2, i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                        MenuItemImpl.a(sb2, i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                        if (c != '\b') {
                            if (c != '\n') {
                                if (c != ' ') {
                                    sb2.append(c);
                                } else {
                                    sb2.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                                }
                            } else {
                                sb2.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                            }
                        } else {
                            sb2.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                        }
                        sb = sb2.toString();
                    }
                    textView.setText(sb);
                }
                if (this.o.getVisibility() != i3) {
                    this.o.setVisibility(i3);
                }
                setIcon(menuItemImpl.getIcon());
                setEnabled(menuItemImpl.isEnabled());
                setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
                setContentDescription(menuItemImpl.q);
            }
        }
        z = false;
        menuBuilder.m();
        if (z) {
        }
        i3 = 8;
        if (i3 == 0) {
        }
        if (this.o.getVisibility() != i3) {
        }
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.q);
    }

    @Override // androidx.appcompat.view.menu.MenuView$ItemView
    public MenuItemImpl getItemData() {
        return this.j;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.s);
        TextView textView = (TextView) findViewById(R.id.title);
        this.m = textView;
        int i = this.t;
        if (i != -1) {
            textView.setTextAppearance(this.u, i);
        }
        this.o = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.p = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.w);
        }
        this.q = (ImageView) findViewById(R.id.group_divider);
        this.r = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.k != null && this.v) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.k.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (z || this.l != null || this.n != null) {
            if ((this.j.x & 4) != 0) {
                if (this.l == null) {
                    RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                    this.l = radioButton;
                    LinearLayout linearLayout = this.r;
                    if (linearLayout != null) {
                        linearLayout.addView(radioButton, -1);
                    } else {
                        addView(radioButton, -1);
                    }
                }
                compoundButton = this.l;
                view = this.n;
            } else {
                if (this.n == null) {
                    CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                    this.n = checkBox;
                    LinearLayout linearLayout2 = this.r;
                    if (linearLayout2 != null) {
                        linearLayout2.addView(checkBox, -1);
                    } else {
                        addView(checkBox, -1);
                    }
                }
                compoundButton = this.n;
                view = this.l;
            }
            if (z) {
                compoundButton.setChecked(this.j.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (view != null && view.getVisibility() != 8) {
                    view.setVisibility(8);
                    return;
                }
                return;
            }
            CheckBox checkBox2 = this.n;
            if (checkBox2 != null) {
                checkBox2.setVisibility(8);
            }
            RadioButton radioButton2 = this.l;
            if (radioButton2 != null) {
                radioButton2.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.j.x & 4) != 0) {
            if (this.l == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.l = radioButton;
                LinearLayout linearLayout = this.r;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.l;
        } else {
            if (this.n == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.n = checkBox;
                LinearLayout linearLayout2 = this.r;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.n;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.z = z;
        this.v = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        int i;
        ImageView imageView = this.q;
        if (imageView != null) {
            if (!this.x && z) {
                i = 0;
            } else {
                i = 8;
            }
            imageView.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        MenuBuilder menuBuilder = this.j.n;
        boolean z = this.z;
        if (z || this.v) {
            ImageView imageView = this.k;
            if (imageView != null || drawable != null || this.v) {
                if (imageView == null) {
                    ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                    this.k = imageView2;
                    LinearLayout linearLayout = this.r;
                    if (linearLayout != null) {
                        linearLayout.addView(imageView2, 0);
                    } else {
                        addView(imageView2, 0);
                    }
                }
                if (drawable == null && !this.v) {
                    this.k.setVisibility(8);
                    return;
                }
                ImageView imageView3 = this.k;
                if (!z) {
                    drawable = null;
                }
                imageView3.setImageDrawable(drawable);
                if (this.k.getVisibility() != 0) {
                    this.k.setVisibility(0);
                }
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.m;
        if (charSequence != null) {
            textView.setText(charSequence);
            if (this.m.getVisibility() != 0) {
                this.m.setVisibility(0);
                return;
            }
            return;
        }
        if (textView.getVisibility() != 8) {
            this.m.setVisibility(8);
        }
    }
}
