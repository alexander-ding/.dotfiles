"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[708],{2197:(e,i,t)=>{t.d(i,{n:()=>A});var s=t(59496),r=t(84875),n=t.n(r),a=t(92053),l=t(68045),c=t(7259),d=t(3622),o=t(34194),u=t(17657),m=t(28485),x=t(54226);var h=t(91012),p=t(84093),j=t(99026);const g="main-topBar-contentArea",v="muYk5XIwKmqR9iNibk_f",y="queue-tabBar-headerItem",f="queue-tabBar-moreButton",b="queue-tabBar-moreButtonActive",k="yxf_6IsQEmHjijEBUMTP",w="queue-tabBar-active",C="queue-tabBar-headerItemLink",N="queue-tabBar-header",E="queue-tabBar-chevron";var I=t(4637);const R=({items:e,activeItemId:i})=>(0,I.jsx)(p.v,{children:e.map((e=>e.disabled?(0,I.jsx)(j.s,{disabled:!0,role:"menuitemradio",className:k,onClick:e.handleClick,children:e.title},e.uri):(0,I.jsx)(j.s,{role:"menuitemradio",to:e.to,end:!0,"aria-checked":e.itemId===i,className:({isActive:e})=>n()(k,{[w]:e}),onClick:e.handleClick,children:e.title},e.uri)))});var U=t(59503);const A=(0,s.memo)((function({isCentered:e,links:i,landmarkLabel:t,className:r}){const p=(0,s.useRef)(null),[j,k]=(0,s.useState)([]),[A,T]=(0,s.useState)(0),[S,B]=(0,s.useState)([]),D=function(){const[e,i]=(0,s.useState)(window.innerWidth),{scrollNodeChildRef:t}=(0,s.useContext)(m.VX),r=(0,u.y1)((e=>{e?.width&&i(e.width)}),250);return(0,x.y)({refOrElement:t,observeOnly:"width",onResize:r}),e}()??1/0,{pathname:O}=(0,a.TH)(),M=i.find((e=>e.to===O));return(0,s.useEffect)((()=>{p.current&&T(p.current.clientWidth)}),[D]),(0,s.useEffect)((()=>{if(!p.current)return;const e=Array.from(p.current.children).map((e=>e.clientWidth));k(e)}),[i]),(0,s.useEffect)((()=>{if(!p.current)return;if(j.slice(0,-1).reduce(((e,i)=>e+i),0)<=A)return void B([]);const e=j.reduce(((e,i)=>e>i?e:i),0),i=[];let t=e;j.forEach(((e,s)=>{A>=t+e?t+=e:i.push(s)})),B(i)}),[A,j]),(0,I.jsx)("nav",{className:n()(r,g),"aria-label":t,children:(0,I.jsxs)("ul",{className:e?v:N,ref:p,children:[i.filter(((e,i)=>!S.includes(i))).map((e=>{const i=e?.render??(e=>e);return(0,I.jsx)(s.Fragment,{children:i((0,I.jsx)("li",{className:y,children:e.disabled?(0,I.jsx)("div",{className:C,children:(0,I.jsx)(l.D,{variant:"mestoBold",children:e.title})}):(0,I.jsx)(U.O,{end:!0,className:({isActive:e})=>n()(C,{[w]:e}),to:e.to,onClick:e.handleClick,children:(0,I.jsx)(l.D,{variant:"mestoBold",children:e.title})})}))},e.to)})),S.length||0===j.length?(0,I.jsx)("li",{className:y,children:(0,I.jsx)(h.xV,{renderInline:!0,menu:(0,I.jsx)(R,{items:i.filter(((e,i)=>S.includes(i))),activeItemId:M?.itemId}),children:(e,i,t)=>(0,I.jsxs)("button",{className:n()(f,{[b]:M}),type:"button",onClick:i,ref:t,children:[(0,I.jsx)(l.D,{variant:"mestoBold",children:M?M.title:o.ag.get("more")}),e?(0,I.jsx)(c.U,{iconSize:16,className:E,"aria-hidden":"true"}):(0,I.jsx)(d.i,{iconSize:16,className:E,"aria-hidden":"true"})]})})}):null]})})}))},16354:(e,i,t)=>{t.d(i,{I:()=>x});var s=t(92705),r=t(59496),n=t(34194),a=t(2197),l=t(32317),c=t(17222),d=t(38352);const o="queue-tabBar-nav";var u=t(4637);const m=()=>{const e=(0,d.Y)(),i=(0,r.useCallback)((e=>(0,u.jsx)(c.v,{placement:"bottomEnd",arrow:"topStart",title:n.ag.get("pick-and-shuffle.upsell.title.queue"),children:e})),[]),t=(0,r.useMemo)((()=>[{title:n.ag.get("playback-control.queue"),itemId:"queue",to:"/queue",uri:"spotify:app:queue",render:i,disabled:e},{title:n.ag.get("view.recently-played"),itemId:"history",to:"/history",uri:"spotify:app:history"}]),[e,i]);return(0,u.jsx)(l.w,{children:(0,u.jsx)(a.n,{className:o,links:t})})},x=({children:e})=>{const i=(0,s.nF)();return(0,u.jsxs)("section",{className:"contentSpacing",children:[e,i&&(0,u.jsx)(m,{})]})}},41708:(e,i,t)=>{t.r(i),t.d(i,{default:()=>F});var s=t(92705),r=t(68045),n=t(34194),a=t(40406),l=t(74970),c=t(4637);const d=()=>(0,c.jsxs)("div",{className:l.Z.emptyContainer,children:[(0,c.jsx)(a.Y,{iconSize:64,"aria-hidden":"true"}),(0,c.jsx)(r.D,{as:"h1",variant:"alto",semanticColor:"textBase",className:l.Z.emptyContainerTitle,children:n.ag.get("history.empty-title")}),(0,c.jsx)("p",{children:n.ag.get("history.empty-description")})]});var o=t(59496),u=t(58063),m=t(7881),x=t(89662),h=t(91995),p=t(76946),j=t(90258),g=t(49706),v=t(8662),y=t(99727),f=t(36982),b=t(22559),k=t(70162),w=t(73375),C=t(13899),N=t(89161),E=t(44131),I=t(27344),R=t(21298),U=t(34549),A=t(48161),T=t(70134),S=t(31612),B=t(97223),D=t(37042);const O=o.memo((function({uri:e,name:i,duration_ms:t,index:s,imgUrl:r,artists:a,album:l,isExplicit:d,isMOGEFRestricted:o,isLocal:u=!1,contextItem:m,type:h}){const{isActive:j,isPlaying:g,triggerPlay:O,togglePlay:M}=(0,T.n)({uri:u?U.b:e,pages:[{items:[{...m,provider:u?null:m.provider}]}]},{featureIdentifier:"history"}),P=h===p.p.TRACK,_=h===p.p.EPISODE,G=h===p.p.CHAPTER,L=(0,A._)(e),Z=(0,D.k)(e),{badges:F,hasBadges:Q}=(0,S.r)({downloadAvailability:L,isExplicit:d,isMOGEFRestricted:o}),W=a?.map((e=>e.name)).join(n.ag.getSeparator())||"";let q;return _?q=(0,c.jsx)(y.k,{uri:e,contextUri:e,showUri:l.uri}):G?q=(0,c.jsx)(B.r,{uri:e,contextUri:e,showUri:l.uri}):P&&(0,v.dB)(e)?q=(0,c.jsx)(f.N,{uri:e,contextUri:e}):P&&(q=(0,c.jsx)(b.$,{uri:e,contextUri:e,albumUri:l.uri,artists:a})),(0,c.jsx)(x.ZP,{value:"row",index:s,children:(0,c.jsx)(N._,{menu:q,children:(0,c.jsxs)(C.c,{uri:e,contextUri:e,index:s,ariaRowIndex:s,onTriggerPlay:()=>{O()},isActive:j,isPlayable:Z,ageRestricted:o,dragMetadata:{name:i,createdBy:W},children:[(0,c.jsxs)(k.vZ,{ariaColIndex:0,children:[(0,c.jsx)(k.VG,{uri:e,src:r,isPlaying:g,isActive:j,isLocked:!1,onClick:()=>{M()},isEpisode:(0,v.hn)(e),playAriaLabel:n.ag.get("tracklist.a11y.play",i,W)}),(0,c.jsxs)(k.vm,{children:[(0,c.jsx)(k.Wh,{titleText:i,children:i}),Q&&(0,c.jsxs)(k.g3,{children:[F.download&&(0,c.jsx)(E.G,{size:16}),F.explicit&&(0,c.jsx)(I.N,{}),F.nineteen&&(0,c.jsx)(R.X,{className:w.Z.nineteen,size:16})]}),(0,c.jsx)(k.K9,{children:(0,v.wj)(e)?(0,c.jsx)(k.T6,{artists:a}):a[0]?.name??""})]})]}),(0,c.jsx)(k.UA,{ariaColIndex:2,children:(0,c.jsx)(k.BM,{nonInteractive:(0,v.dB)(e),uri:l.uri,name:l.name,creatorUri:a?.[0]?.uri,children:l.name})}),(0,c.jsxs)(k.mU,{ariaColIndex:1,children:[!(0,v.dB)(e)&&!G&&(0,c.jsx)(k.qS,{uri:e,type:h}),(0,c.jsx)(k.A$,{duration:t}),(0,c.jsx)(k.Zv,{menu:q,label:n.ag.get("more.label.track",i,W)})]})]})})})}),((e,i)=>e.uri===i.uri)),M=o.memo((function({items:e}){const i=(0,o.useCallback)(((e,i)=>{const t=(0,g.X)(e.images??[],{desiredSize:40});return(0,h.G_)(e)?(0,c.jsx)(O,{index:i,uri:e.isLocal?(0,m.$)(e):e.uri,name:e.name,duration_ms:e.duration.milliseconds,imgUrl:t?.url||"",album:e.album,artists:e.artists,isExplicit:e.isExplicit??!1,isMOGEFRestricted:e.is19PlusOnly??!1,isLocal:e.isLocal,contextItem:e,type:p.p.TRACK},i+e.uri):(0,h.iw)(e)?(0,c.jsx)(O,{index:i,uri:e.uri,name:e.name,duration_ms:e.duration.milliseconds,imgUrl:t?.url||"",album:e.show,artists:[],isExplicit:!1,isMOGEFRestricted:!1,contextItem:e,type:p.p.EPISODE},i+e.uri):(0,h.G7)(e)?(0,c.jsx)(O,{index:i,uri:e.uri,name:e.name,duration_ms:e.duration.milliseconds,imgUrl:t?.url||"",album:e.book,artists:[],isExplicit:!1,isMOGEFRestricted:!1,contextItem:e,type:p.p.CHAPTER},i+e.uri):((0,h.k6)(e)||(0,h.RB)(e)||(0,j._)(e),(0,c.jsx)(u.hU,{height:`${u.dN}px`}))}),[]),t=(0,o.useMemo)((()=>[u.QD.TITLE,u.QD.ALBUM_OR_PODCAST,u.QD.DURATION]),[]),s=(0,o.useCallback)((e=>e.uri),[]);return(0,c.jsx)(c.Fragment,{children:(0,c.jsx)(x.ZP,{value:"play-history-tracklist",children:(0,c.jsx)(u.Pv,{ariaLabel:"play-history",hasHeaderRow:!0,columns:t,renderRow:i,resolveUri:s,tracks:e,nrTracks:e.length,rowPlaceholder:u.hU,limit:50})})})})),P="dt3fysZYdQ6hhWfpmjAu",_="n6LsTkKvpO88xeRyRTdw",G=()=>{const e=(0,s.U5)();return e&&e.items.length>0?(0,c.jsxs)("div",{className:P,children:[(0,c.jsx)(r.D,{as:"h1",variant:"canon",semanticColor:"textBase",className:_,children:n.ag.get("view.recently-played")}),(0,c.jsx)(M,{items:e.items})]}):(0,c.jsx)(d,{})};var L=t(16354),Z=t(97026);const F=()=>(0,s.nF)()?(0,c.jsx)(L.I,{children:(0,c.jsx)(G,{})}):(0,c.jsx)(Z.InstrumentedRedirect,{to:"/"})},7881:(e,i,t)=>{t.d(i,{$:()=>s});const s=e=>e?.linked_from?.uri||e.uri},74970:(e,i,t)=>{t.d(i,{Z:()=>s});const s={emptyContainer:"queue-queuePage-emptyContainer",emptyContainerTitle:"queue-queuePage-emptyContainerTitle",findSomething:"queue-queuePage-findSomething"}}}]);
//# sourceMappingURL=xpui-routes-play-history-page.js.map