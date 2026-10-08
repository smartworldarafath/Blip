.class final Landroidx/compose/ui/layout/InnermostInsetsRulers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/WindowInsetsRulers;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

.field public final d:Landroidx/compose/ui/layout/RectRulers;

.field public final e:Landroidx/compose/ui/layout/RectRulers;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroidx/compose/ui/layout/WindowInsetsRulers;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v0, p2

    .line 11
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v0, p2

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    aget-object v3, p2, v2

    .line 20
    .line 21
    invoke-interface {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers;->a()Landroidx/compose/ui/layout/RectRulers;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-array p2, v1, [Landroidx/compose/ui/layout/RectRulers;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    .line 38
    .line 39
    array-length p2, p1

    .line 40
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    .line 45
    .line 46
    new-instance p2, Landroidx/compose/ui/layout/InnerRectRulers;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Landroidx/compose/ui/layout/InnerRectRulers;-><init>([Landroidx/compose/ui/layout/RectRulers;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->d:Landroidx/compose/ui/layout/RectRulers;

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->c:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 54
    .line 55
    new-instance p2, Ljava/util/ArrayList;

    .line 56
    .line 57
    array-length v0, p1

    .line 58
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    array-length v0, p1

    .line 62
    move v2, v1

    .line 63
    :goto_1
    if-ge v2, v0, :cond_1

    .line 64
    .line 65
    aget-object v3, p1, v2

    .line 66
    .line 67
    invoke-interface {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers;->b()Landroidx/compose/ui/layout/RectRulers;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-array p1, v1, [Landroidx/compose/ui/layout/RectRulers;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    .line 84
    .line 85
    array-length p2, p1

    .line 86
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, [Landroidx/compose/ui/layout/RectRulers;

    .line 91
    .line 92
    new-instance p2, Landroidx/compose/ui/layout/InnerRectRulers;

    .line 93
    .line 94
    invoke-direct {p2, p1}, Landroidx/compose/ui/layout/InnerRectRulers;-><init>([Landroidx/compose/ui/layout/RectRulers;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->e:Landroidx/compose/ui/layout/RectRulers;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->d:Landroidx/compose/ui/layout/RectRulers;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->e:Landroidx/compose/ui/layout/RectRulers;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/InnermostInsetsRulers;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
