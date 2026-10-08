.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->k:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->l:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_8

    .line 16
    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 22
    .line 23
    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 24
    .line 25
    const/4 v6, 0x6

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    new-instance v5, Ld;

    .line 31
    .line 32
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 33
    .line 34
    const/4 v9, 0x7

    .line 35
    invoke-direct {v5, v9, v4}, Ld;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget v9, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->c:I

    .line 39
    .line 40
    if-nez v9, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;

    .line 44
    .line 45
    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 49
    .line 50
    const v10, -0x731428a5

    .line 51
    .line 52
    .line 53
    invoke-direct {v9, v10, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 54
    .line 55
    .line 56
    move-object v7, v9

    .line 57
    :goto_1
    new-instance v8, Lp0;

    .line 58
    .line 59
    const/16 v9, 0xb

    .line 60
    .line 61
    iget-object v10, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->l:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 62
    .line 63
    invoke-direct {v8, v9, v4, v10}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v5, v7, v8, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 71
    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 75
    .line 76
    iget-object v5, p0, Landroidx/compose/foundation/text/contextmenu/internal/d;->k:Landroid/content/Context;

    .line 77
    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget v9, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;->c:I

    .line 82
    .line 83
    iget-object v10, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;->b:Landroid/view/textclassifier/TextClassification;

    .line 84
    .line 85
    iget-object v4, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;->d:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-gez v9, :cond_4

    .line 88
    .line 89
    new-instance v9, Ld;

    .line 90
    .line 91
    const/16 v11, 0x17

    .line 92
    .line 93
    invoke-direct {v9, v11, v10}, Ld;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$2$1;

    .line 99
    .line 100
    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$2$1;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    const v11, -0x42f30a7b

    .line 106
    .line 107
    .line 108
    invoke-direct {v4, v11, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 109
    .line 110
    .line 111
    move-object v7, v4

    .line 112
    :cond_3
    new-instance v4, Ltg;

    .line 113
    .line 114
    invoke-direct {v4, v2, v5, v10}, Ltg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v9, v7, v4, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {v10}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/app/RemoteAction;

    .line 130
    .line 131
    new-instance v9, Ld;

    .line 132
    .line 133
    const/16 v10, 0x18

    .line 134
    .line 135
    invoke-direct {v9, v10, v5}, Ld;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5$1;

    .line 141
    .line 142
    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5$1;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .line 144
    .line 145
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 146
    .line 147
    const v10, 0x41eeb29c

    .line 148
    .line 149
    .line 150
    invoke-direct {v4, v10, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 151
    .line 152
    .line 153
    move-object v7, v4

    .line 154
    :cond_5
    new-instance v4, Lkb;

    .line 155
    .line 156
    const/16 v8, 0x12

    .line 157
    .line 158
    invoke-direct {v4, v8, v5}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v9, v7, v4, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->b(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    instance-of v4, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 166
    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    iget-object v4, p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 170
    .line 171
    sget-object v5, Landroidx/compose/foundation/contextmenu/ComposableSingletons$ContextMenuUiKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object p0
.end method
