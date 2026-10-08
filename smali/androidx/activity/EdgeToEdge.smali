.class public abstract Landroidx/activity/EdgeToEdge;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:I

.field public static final b:I

.field public static c:Landroidx/activity/EdgeToEdgeApi28;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe6

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Landroidx/activity/EdgeToEdge;->a:I

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Landroidx/activity/EdgeToEdge;->b:I

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lnet/blip/android/MainActivity;)V
    .locals 8

    .line 1
    new-instance v0, Lle;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lle;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v4, Landroidx/activity/SystemBarStyle;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v4, v2, v2, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lle;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lle;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Landroidx/activity/SystemBarStyle;

    .line 20
    .line 21
    sget v1, Landroidx/activity/EdgeToEdge;->a:I

    .line 22
    .line 23
    sget v2, Landroidx/activity/EdgeToEdge;->b:I

    .line 24
    .line 25
    invoke-direct {v5, v1, v2, v0}, Landroidx/activity/SystemBarStyle;-><init>(IILkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v0, Landroidx/activity/EdgeToEdge;->c:Landroidx/activity/EdgeToEdgeApi28;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x23

    .line 46
    .line 47
    if-lt v0, v1, :cond_0

    .line 48
    .line 49
    new-instance v0, Landroidx/activity/EdgeToEdgeApi35;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x1e

    .line 56
    .line 57
    if-lt v0, v1, :cond_1

    .line 58
    .line 59
    new-instance v0, Landroidx/activity/EdgeToEdgeApi30;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v1, 0x1d

    .line 66
    .line 67
    if-lt v0, v1, :cond_2

    .line 68
    .line 69
    new-instance v0, Landroidx/activity/EdgeToEdgeApi29;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Landroidx/activity/EdgeToEdgeApi28;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    :goto_0
    sput-object v0, Landroidx/activity/EdgeToEdge;->c:Landroidx/activity/EdgeToEdgeApi28;

    .line 81
    .line 82
    :cond_3
    move-object v3, v0

    .line 83
    new-instance v2, Landroidx/activity/c;

    .line 84
    .line 85
    move-object v6, p0

    .line 86
    invoke-direct/range {v2 .. v7}, Landroidx/activity/c;-><init>(Landroidx/activity/EdgeToEdgeImpl;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;Lnet/blip/android/MainActivity;Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    check-cast v7, Landroid/view/ViewGroup;

    .line 90
    .line 91
    new-instance p0, Landroidx/core/view/ViewGroupKt$children$1;

    .line 92
    .line 93
    invoke-direct {p0, v7}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_4
    move-object v0, p0

    .line 101
    check-cast v0, Landroidx/core/view/ViewGroupKt$iterator$1;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/core/view/ViewGroupKt$iterator$1;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    instance-of v0, v0, Landroidx/activity/EdgeToEdgeImpl;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance v0, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;

    .line 129
    .line 130
    invoke-direct {v0, v2, p0}, Landroidx/activity/EdgeToEdge$enableEdgeToEdge$1$2;-><init>(Landroidx/activity/c;Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const/16 p0, 0x8

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x1

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {v2}, Landroidx/activity/c;->run()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-interface {v3, p0}, Landroidx/activity/EdgeToEdgeImpl;->b(Landroid/view/Window;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
