.class public final Landroidx/compose/ui/modifier/ModifierLocalManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field public b:Landroidx/collection/MutableObjectList;

.field public c:Landroidx/collection/MutableObjectList;

.field public d:Landroidx/collection/MutableObjectList;

.field public e:Landroidx/collection/MutableObjectList;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/modifier/ModifierLocal;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "visitSubtreeIf called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 17
    .line 18
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 35
    .line 36
    if-eqz p0, :cond_b

    .line 37
    .line 38
    add-int/lit8 p0, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 47
    .line 48
    and-int/lit8 v2, v2, 0x20

    .line 49
    .line 50
    if-eqz v2, :cond_a

    .line 51
    .line 52
    move-object v2, p0

    .line 53
    :goto_1
    if-eqz v2, :cond_a

    .line 54
    .line 55
    iget-boolean v3, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 56
    .line 57
    if-eqz v3, :cond_a

    .line 58
    .line 59
    iget v3, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 60
    .line 61
    and-int/lit8 v3, v3, 0x20

    .line 62
    .line 63
    if-eqz v3, :cond_9

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    move-object v4, v2

    .line 67
    move-object v5, v3

    .line 68
    :goto_2
    if-eqz v4, :cond_9

    .line 69
    .line 70
    instance-of v6, v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 71
    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    check-cast v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 75
    .line 76
    invoke-interface {v4}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->a0()Landroidx/compose/ui/modifier/ModifierLocalMap;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 88
    .line 89
    and-int/lit8 v6, v6, 0x20

    .line 90
    .line 91
    if-eqz v6, :cond_8

    .line 92
    .line 93
    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 94
    .line 95
    if-eqz v6, :cond_8

    .line 96
    .line 97
    move-object v6, v4

    .line 98
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 99
    .line 100
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_3
    const/4 v8, 0x1

    .line 104
    if-eqz v6, :cond_7

    .line 105
    .line 106
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 107
    .line 108
    and-int/lit8 v9, v9, 0x20

    .line 109
    .line 110
    if-eqz v9, :cond_6

    .line 111
    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    if-ne v7, v8, :cond_3

    .line 115
    .line 116
    move-object v4, v6

    .line 117
    goto :goto_4

    .line 118
    :cond_3
    if-nez v5, :cond_4

    .line 119
    .line 120
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 121
    .line 122
    new-array v8, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 123
    .line 124
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    move-object v4, v3

    .line 133
    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    if-ne v7, v8, :cond_8

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    goto :goto_2

    .line 147
    :cond_9
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_a
    invoke-static {v0, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_b
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->f:Z

    .line 7
    .line 8
    new-instance v0, Lkb;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/ui/modifier/ModifierLocalManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->z0:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/collection/ObjectList;->c(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ltz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
