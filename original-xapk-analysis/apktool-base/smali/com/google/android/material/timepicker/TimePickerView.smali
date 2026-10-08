.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic z:I


# instance fields
.field public final y:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$1;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0d0043

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0a011f

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 28
    .line 29
    const p1, 0x7f0a0123

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerView$2;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0a0128

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 58
    .line 59
    const v0, 0x7f0a0125

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 67
    .line 68
    const v1, 0x7f0a0120

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    .line 76
    .line 77
    new-instance v1, Landroid/view/GestureDetector;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$3;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 89
    .line 90
    .line 91
    new-instance p0, Lcom/google/android/material/timepicker/TimePickerView$4;

    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/TimePickerView$4;-><init>(Landroid/view/GestureDetector;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    .line 101
    .line 102
    const/16 p0, 0xc

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const v1, 0x7f0a0198

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/16 p0, 0xa

    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    :goto_0
    const v2, 0x7f0a011e

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet;->c:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    packed-switch v1, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    const-string p0, "unknown constraint"

    .line 58
    .line 59
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 64
    .line 65
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 66
    .line 67
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 68
    .line 69
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 70
    .line 71
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_1
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 75
    .line 76
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 77
    .line 78
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 79
    .line 80
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 81
    .line 82
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_2
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 86
    .line 87
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_3
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 91
    .line 92
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 93
    .line 94
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 95
    .line 96
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 97
    .line 98
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_4
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 102
    .line 103
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 104
    .line 105
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 106
    .line 107
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 108
    .line 109
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_5
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 113
    .line 114
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 115
    .line 116
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 117
    .line 118
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 119
    .line 120
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_6
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 124
    .line 125
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 126
    .line 127
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 128
    .line 129
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 130
    .line 131
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 132
    .line 133
    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
