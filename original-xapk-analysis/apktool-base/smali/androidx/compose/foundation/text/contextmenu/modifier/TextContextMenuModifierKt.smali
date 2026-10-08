.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 13

    .line 1
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 2
    .line 3
    invoke-direct {v2}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt$collectTextContextMenuData$1$1;

    .line 7
    .line 8
    const-string v5, "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V"

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    const-class v3, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 13
    .line 14
    const-string v4, "addFilter"

    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lma;

    .line 20
    .line 21
    const/16 v3, 0x1b

    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Lma;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lma;

    .line 27
    .line 28
    const/16 v4, 0x1c

    .line 29
    .line 30
    invoke-direct {v3, v4, v1, v0}, Lma;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;->a:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;

    .line 34
    .line 35
    invoke-static {p0, v0, v3}, Landroidx/compose/ui/node/TraversableNodeKt;->a(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Landroidx/collection/MutableObjectList;

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 46
    .line 47
    iget v0, v0, Landroidx/collection/ObjectList;->b:I

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    move v6, v3

    .line 53
    move v7, v4

    .line 54
    move-object v8, v5

    .line 55
    :goto_0
    sget-object v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 56
    .line 57
    if-ge v6, v0, :cond_6

    .line 58
    .line 59
    aget-object v10, v1, v6

    .line 60
    .line 61
    check-cast v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    if-eq v10, v9, :cond_5

    .line 66
    .line 67
    :cond_0
    if-ne v10, v9, :cond_1

    .line 68
    .line 69
    if-ne v8, v9, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    if-ne v10, v9, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    iget-object v7, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->b:Landroidx/collection/MutableObjectList;

    .line 76
    .line 77
    iget-object v9, v7, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 78
    .line 79
    iget v7, v7, Landroidx/collection/ObjectList;->b:I

    .line 80
    .line 81
    move v11, v3

    .line 82
    :goto_1
    if-ge v11, v7, :cond_4

    .line 83
    .line 84
    aget-object v12, v9, v11

    .line 85
    .line 86
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    check-cast v12, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-nez v12, :cond_3

    .line 99
    .line 100
    :goto_2
    move v7, v3

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    :goto_3
    invoke-virtual {p0, v10}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move v7, v3

    .line 109
    move-object v8, v10

    .line 110
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {p0}, Landroidx/collection/ObjectList;->d()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_7
    iget-object v0, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 121
    .line 122
    iget v1, p0, Landroidx/collection/ObjectList;->b:I

    .line 123
    .line 124
    sub-int/2addr v1, v4

    .line 125
    aget-object v5, v0, v1

    .line 126
    .line 127
    :goto_5
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 128
    .line 129
    if-ne v5, v9, :cond_8

    .line 130
    .line 131
    iget v0, p0, Landroidx/collection/ObjectList;->b:I

    .line 132
    .line 133
    sub-int/2addr v0, v4

    .line 134
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->j()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;-><init>(Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    return-object v0
.end method
