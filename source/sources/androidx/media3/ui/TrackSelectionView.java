package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.Tracks;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {
    public final int j;
    public final LayoutInflater k;
    public final CheckedTextView l;
    public final CheckedTextView m;
    public final ComponentListener n;
    public final ArrayList o;
    public final HashMap p;
    public boolean q;
    public boolean r;
    public TrackNameProvider s;
    public CheckedTextView[][] t;
    public boolean u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ComponentListener implements View.OnClickListener {
        public ComponentListener() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            TrackSelectionView trackSelectionView = TrackSelectionView.this;
            HashMap hashMap = trackSelectionView.p;
            boolean z2 = true;
            if (view == trackSelectionView.l) {
                trackSelectionView.u = true;
                hashMap.clear();
            } else if (view == trackSelectionView.m) {
                trackSelectionView.u = false;
                hashMap.clear();
            } else {
                trackSelectionView.u = false;
                Object tag = view.getTag();
                tag.getClass();
                TrackInfo trackInfo = (TrackInfo) tag;
                Tracks.Group group = trackInfo.a;
                TrackGroup trackGroup = group.b;
                int i = trackInfo.b;
                TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) hashMap.get(trackGroup);
                if (trackSelectionOverride == null) {
                    if (!trackSelectionView.r && !hashMap.isEmpty()) {
                        hashMap.clear();
                    }
                    hashMap.put(trackGroup, new TrackSelectionOverride(trackGroup, ImmutableList.t(Integer.valueOf(i))));
                } else {
                    ArrayList arrayList = new ArrayList(trackSelectionOverride.b);
                    boolean isChecked = ((CheckedTextView) view).isChecked();
                    if (trackSelectionView.q && group.c) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z && (!trackSelectionView.r || trackSelectionView.o.size() <= 1)) {
                        z2 = false;
                    }
                    if (isChecked && z2) {
                        arrayList.remove(Integer.valueOf(i));
                        if (arrayList.isEmpty()) {
                            hashMap.remove(trackGroup);
                        } else {
                            hashMap.put(trackGroup, new TrackSelectionOverride(trackGroup, arrayList));
                        }
                    } else if (!isChecked) {
                        if (z) {
                            arrayList.add(Integer.valueOf(i));
                            hashMap.put(trackGroup, new TrackSelectionOverride(trackGroup, arrayList));
                        } else {
                            hashMap.put(trackGroup, new TrackSelectionOverride(trackGroup, ImmutableList.t(Integer.valueOf(i))));
                        }
                    }
                }
            }
            trackSelectionView.a();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackInfo {
        public final Tracks.Group a;
        public final int b;

        public TrackInfo(Tracks.Group group, int i) {
            this.a = group;
            this.b = i;
        }
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.j = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.k = from;
        ComponentListener componentListener = new ComponentListener();
        this.n = componentListener;
        this.s = new DefaultTrackNameProvider(getResources());
        this.o = new ArrayList();
        this.p = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.l = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(net.blip.android.R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(componentListener);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(net.blip.android.R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.m = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(net.blip.android.R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(componentListener);
        addView(checkedTextView2);
    }

    public final void a() {
        boolean z;
        this.l.setChecked(this.u);
        boolean z2 = this.u;
        HashMap hashMap = this.p;
        if (!z2 && hashMap.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        this.m.setChecked(z);
        for (int i = 0; i < this.t.length; i++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) hashMap.get(((Tracks.Group) this.o.get(i)).b);
            int i2 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.t[i];
                if (i2 < checkedTextViewArr.length) {
                    if (trackSelectionOverride != null) {
                        Object tag = checkedTextViewArr[i2].getTag();
                        tag.getClass();
                        this.t[i][i2].setChecked(trackSelectionOverride.b.contains(Integer.valueOf(((TrackInfo) tag).b)));
                    } else {
                        checkedTextViewArr[i2].setChecked(false);
                    }
                    i2++;
                }
            }
        }
    }

    public final void b() {
        boolean z;
        boolean z2;
        int i;
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        ArrayList arrayList = this.o;
        boolean isEmpty = arrayList.isEmpty();
        CheckedTextView checkedTextView = this.m;
        CheckedTextView checkedTextView2 = this.l;
        if (isEmpty) {
            checkedTextView2.setEnabled(false);
            checkedTextView.setEnabled(false);
            return;
        }
        checkedTextView2.setEnabled(true);
        checkedTextView.setEnabled(true);
        this.t = new CheckedTextView[arrayList.size()];
        if (this.r && arrayList.size() > 1) {
            z = true;
        } else {
            z = false;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Tracks.Group group = (Tracks.Group) arrayList.get(i2);
            if (this.q && group.c) {
                z2 = true;
            } else {
                z2 = false;
            }
            CheckedTextView[][] checkedTextViewArr = this.t;
            int i3 = group.a;
            checkedTextViewArr[i2] = new CheckedTextView[i3];
            TrackInfo[] trackInfoArr = new TrackInfo[i3];
            for (int i4 = 0; i4 < group.a; i4++) {
                trackInfoArr[i4] = new TrackInfo(group, i4);
            }
            for (int i5 = 0; i5 < i3; i5++) {
                LayoutInflater layoutInflater = this.k;
                if (i5 == 0) {
                    addView(layoutInflater.inflate(net.blip.android.R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                if (!z2 && !z) {
                    i = R.layout.simple_list_item_single_choice;
                } else {
                    i = R.layout.simple_list_item_multiple_choice;
                }
                CheckedTextView checkedTextView3 = (CheckedTextView) layoutInflater.inflate(i, (ViewGroup) this, false);
                checkedTextView3.setBackgroundResource(this.j);
                TrackNameProvider trackNameProvider = this.s;
                TrackInfo trackInfo = trackInfoArr[i5];
                DefaultTrackNameProvider defaultTrackNameProvider = (DefaultTrackNameProvider) trackNameProvider;
                checkedTextView3.setText(defaultTrackNameProvider.c(trackInfo.a.b.d[trackInfo.b]));
                checkedTextView3.setTag(trackInfoArr[i5]);
                if (group.a(i5)) {
                    checkedTextView3.setFocusable(true);
                    checkedTextView3.setOnClickListener(this.n);
                } else {
                    checkedTextView3.setFocusable(false);
                    checkedTextView3.setEnabled(false);
                }
                this.t[i2][i5] = checkedTextView3;
                addView(checkedTextView3);
            }
        }
        a();
    }

    public boolean getIsDisabled() {
        return this.u;
    }

    public Map<TrackGroup, TrackSelectionOverride> getOverrides() {
        return this.p;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.q != z) {
            this.q = z;
            b();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.r != z) {
            this.r = z;
            if (!z) {
                HashMap hashMap = this.p;
                if (hashMap.size() > 1) {
                    HashMap hashMap2 = new HashMap();
                    int i = 0;
                    while (true) {
                        ArrayList arrayList = this.o;
                        if (i >= arrayList.size()) {
                            break;
                        }
                        TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) hashMap.get(((Tracks.Group) arrayList.get(i)).b);
                        if (trackSelectionOverride != null && hashMap2.isEmpty()) {
                            hashMap2.put(trackSelectionOverride.a, trackSelectionOverride);
                        }
                        i++;
                    }
                    hashMap.clear();
                    hashMap.putAll(hashMap2);
                }
            }
            b();
        }
    }

    public void setShowDisableOption(boolean z) {
        int i;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        this.l.setVisibility(i);
    }

    public void setTrackNameProvider(TrackNameProvider trackNameProvider) {
        trackNameProvider.getClass();
        this.s = trackNameProvider;
        b();
    }
}
