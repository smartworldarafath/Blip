.class public final synthetic Landroidx/media3/ui/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/f;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/f;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result p7

    .line 13
    sub-int/2addr p5, p7

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result p7

    .line 18
    sub-int/2addr p5, p7

    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p7

    .line 23
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result p9

    .line 27
    sub-int/2addr p7, p9

    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    sub-int/2addr p7, p3

    .line 33
    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result p9

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v2, v0

    .line 53
    :goto_0
    sub-int/2addr p9, v2

    .line 54
    if-nez p3, :cond_1

    .line 55
    .line 56
    move v1, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    .line 72
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 73
    .line 74
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 75
    .line 76
    add-int/2addr v3, v2

    .line 77
    add-int/2addr v1, v3

    .line 78
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    add-int/2addr p3, v2

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move p3, v0

    .line 91
    :goto_2
    sub-int/2addr v1, p3

    .line 92
    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j:Landroid/view/ViewGroup;

    .line 93
    .line 94
    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->l:Landroid/view/View;

    .line 99
    .line 100
    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c(Landroid/view/View;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    add-int/2addr p3, v2

    .line 105
    invoke-static {p9, p3}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    iget-object p9, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e:Landroid/view/ViewGroup;

    .line 110
    .line 111
    if-nez p9, :cond_4

    .line 112
    .line 113
    move v2, v0

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {p9}, Landroid/view/View;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {p9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object p9

    .line 123
    instance-of v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    check-cast p9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    .line 129
    iget v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 130
    .line 131
    iget p9, p9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 132
    .line 133
    add-int/2addr v3, p9

    .line 134
    add-int/2addr v2, v3

    .line 135
    :cond_5
    :goto_3
    const/4 p9, 0x2

    .line 136
    mul-int/2addr v2, p9

    .line 137
    add-int/2addr v2, v1

    .line 138
    const/4 v1, 0x1

    .line 139
    if-le p5, p3, :cond_7

    .line 140
    .line 141
    if-gt p7, v2, :cond_6

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    move p3, v0

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    :goto_4
    move p3, v1

    .line 147
    :goto_5
    iget-boolean p5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 148
    .line 149
    if-eq p5, p3, :cond_8

    .line 150
    .line 151
    iput-boolean p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 152
    .line 153
    new-instance p3, Landroidx/media3/ui/d;

    .line 154
    .line 155
    invoke-direct {p3, p0, v1}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    :cond_8
    sub-int/2addr p4, p2

    .line 162
    sub-int/2addr p8, p6

    .line 163
    if-eq p4, p8, :cond_9

    .line 164
    .line 165
    move v0, v1

    .line 166
    :cond_9
    iget-boolean p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 167
    .line 168
    if-nez p2, :cond_a

    .line 169
    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    new-instance p2, Landroidx/media3/ui/d;

    .line 173
    .line 174
    invoke-direct {p2, p0, p9}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    :cond_a
    return-void
.end method
