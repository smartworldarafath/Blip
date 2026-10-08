.class final Landroidx/compose/ui/layout/InnerRectRulers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/RectRulers;


# instance fields
.field public final a:[Landroidx/compose/ui/layout/RectRulers;

.field public final b:Landroidx/compose/ui/layout/VerticalRuler;

.field public final c:Landroidx/compose/ui/layout/HorizontalRuler;

.field public final d:Landroidx/compose/ui/layout/VerticalRuler;

.field public final e:Landroidx/compose/ui/layout/HorizontalRuler;


# direct methods
.method public constructor <init>([Landroidx/compose/ui/layout/RectRulers;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    new-array v0, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, p1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    invoke-interface {v3}, Landroidx/compose/ui/layout/RectRulers;->b()Landroidx/compose/ui/layout/VerticalRuler;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v0, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lji;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {p1, v0, v2}, Lji;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->b:Landroidx/compose/ui/layout/VerticalRuler;

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 40
    .line 41
    array-length p1, p1

    .line 42
    new-array v0, p1, [Landroidx/compose/ui/layout/HorizontalRuler;

    .line 43
    .line 44
    move v3, v1

    .line 45
    :goto_1
    if-ge v3, p1, :cond_1

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 48
    .line 49
    aget-object v4, v4, v3

    .line 50
    .line 51
    invoke-interface {v4}, Landroidx/compose/ui/layout/RectRulers;->c()Landroidx/compose/ui/layout/HorizontalRuler;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    aput-object v4, v0, v3

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    .line 61
    .line 62
    new-instance v3, Lr9;

    .line 63
    .line 64
    invoke-direct {v3, v0, v2}, Lr9;-><init>([Landroidx/compose/ui/layout/HorizontalRuler;I)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v3}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 71
    .line 72
    iget-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 73
    .line 74
    array-length p1, p1

    .line 75
    new-array v0, p1, [Landroidx/compose/ui/layout/VerticalRuler;

    .line 76
    .line 77
    move v2, v1

    .line 78
    :goto_2
    if-ge v2, p1, :cond_2

    .line 79
    .line 80
    iget-object v3, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 81
    .line 82
    aget-object v3, v3, v2

    .line 83
    .line 84
    invoke-interface {v3}, Landroidx/compose/ui/layout/RectRulers;->d()Landroidx/compose/ui/layout/VerticalRuler;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    aput-object v3, v0, v2

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    new-instance p1, Lji;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1}, Lji;-><init>([Landroidx/compose/ui/layout/VerticalRuler;I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->d:Landroidx/compose/ui/layout/VerticalRuler;

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 106
    .line 107
    array-length p1, p1

    .line 108
    new-array v0, p1, [Landroidx/compose/ui/layout/HorizontalRuler;

    .line 109
    .line 110
    move v2, v1

    .line 111
    :goto_3
    if-ge v2, p1, :cond_3

    .line 112
    .line 113
    iget-object v3, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 114
    .line 115
    aget-object v3, v3, v2

    .line 116
    .line 117
    invoke-interface {v3}, Landroidx/compose/ui/layout/RectRulers;->a()Landroidx/compose/ui/layout/HorizontalRuler;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    aput-object v3, v0, v2

    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_3
    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    .line 127
    .line 128
    new-instance v2, Lr9;

    .line 129
    .line 130
    invoke-direct {v2, v0, v1}, Lr9;-><init>([Landroidx/compose/ui/layout/HorizontalRuler;I)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, v2}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Landroidx/compose/ui/layout/InnerRectRulers;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->b:Landroidx/compose/ui/layout/VerticalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->d:Landroidx/compose/ui/layout/VerticalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "innermostOf("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/layout/InnerRectRulers;->a:[Landroidx/compose/ui/layout/RectRulers;

    .line 12
    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v4, p0, v2

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    add-int/2addr v3, v5

    .line 22
    if-le v3, v5, :cond_0

    .line 23
    .line 24
    const-string v5, ", "

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v5, 0x0

    .line 30
    invoke-static {v0, v4, v5}, Lkotlin/text/StringsKt;->h(Ljava/lang/StringBuilder;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, ")"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
