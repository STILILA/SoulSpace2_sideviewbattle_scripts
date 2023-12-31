#==============================================================================
# ■ 技能擊退
#------------------------------------------------------------------------------
# 　嗯...沒辦法，畢竟motion終究還是自己演自己的，
#     無法忠實獲知攻擊情況，只好塞進傷害處理了。
#==============================================================================

class Scene_Battle
#==============================================================================
#  ■ 套用位移效果 [x,y]
#------------------------------------------------------------------------------
#  anime_id：戰鬥動畫id、frame：影格
#
#  因為和連擊系統有關，所以只對有連擊設定的戰鬥動畫有效 
#  對，是戰鬥動畫，不要打成技能ID
#==============================================================================
  def atk_movement(anime_id, frame)
    case $data_animations[anime_id].id
    #--------------------------------------------------------------------------
# ● 狼爪
#--------------------------------------------------------------------------  
    when 521
      case frame # 影格
      when 2
        return [-10, nil]
      else
        return
      end
#--------------------------------------------------------------------------
# ● 三爪痕
#--------------------------------------------------------------------------  
    when 514
      case frame # 影格
      when 25
        return [10, 20]
      else
        return
      end
#--------------------------------------------------------------------------
# ● 灰滅‧牙狼舞月
#--------------------------------------------------------------------------  
    when 522
      case frame # 影格
      when 85
        return [nil, 20]
      else
        return
      end
      
 #--------------------------------------------------------------------------
# ●  163：灰擊‧扭曲
#--------------------------------------------------------------------------  
    when 539
      case frame # 影格
      when 4
        return [-5, 15]
      else
        return
      end     
      
#--------------------------------------------------------------------------
# ●  166：白晝‧撕裂
#--------------------------------------------------------------------------  
    when 529
      case frame # 影格
      when 17
        return [5, 10]
      else
        return
      end
      
      
  #--------------------------------------------------------------------------
# ●  167：白晝‧時間撕裂
#--------------------------------------------------------------------------  
    when 530
      case frame # 影格
      when 17
        return [10, 20]
      else
        return
      end
      
#--------------------------------------------------------------------------
# ● 灰魂。碎星鐵爪
#--------------------------------------------------------------------------  
    when 274
      case frame # 影格
      when 28
        return [10, 20]
      else
        return
      end
 #--------------------------------------------------------------------------
# ●  273：無名‧狂舞斬
#--------------------------------------------------------------------------  
    when 541
      case frame # 影格
      when 6
        return [-5, 10]
      else
        return
      end
  #--------------------------------------------------------------------------
# ●  275：鷹眼‧烈風破
#--------------------------------------------------------------------------  
    when 760
      case frame # 影格
      when 4
        return [-10, 20]
      else
        return
      end
          
   #--------------------------------------------------------------------------
# ● 貓術‧百烈亂擊
#--------------------------------------------------------------------------  
    when 579
      case frame # 影格
      when 33
        return [-15, 22]
      else
        return
      end  
         #--------------------------------------------------------------------------
# ● 貓術‧百烈亂擊
#--------------------------------------------------------------------------  
    when 581
      case frame # 影格
      when 56
        return [0, 30]
      else
        return
      end  
               #--------------------------------------------------------------------------
# ● 貓術‧百烈亂擊
#--------------------------------------------------------------------------  
    when 585
      case frame # 影格
      when 1
        return [-2, 0]
        when 3
        return [-2, 0]
        when 5
        return [-2, 0]
        when 7
       return [-2, 0]
        when 9
        return [-2, 0]
        when 11
        return [-2, 0]
        when 13
        return [-2, 0]
        when 15
        return [-2, 0]
        when 17
        return [-2, 0]
        when 19
        return [-2, 0]
        when 21
        return [-2, 0]
        when 59
        return [0, 30]
      else
        return
      end  
#--------------------------------------------------------------------------
# ● 大掃除
#--------------------------------------------------------------------------  
    when 594
      case frame # 影格
      when 6
        return [-5, 15]
        when 19
        return [-5, 15]
        when 32
        return [-5, 15]
      else
        return
      end  
  #--------------------------------------------------------------------------
# ● 大掃除
#--------------------------------------------------------------------------  
    when 595
      case frame # 影格
      when 17
        return [0, 5]
        when 28
        return [-15, 20]
        return
      end  
      #--------------------------------------------------------------------------
# ○ 415：白鎌‧靈鞭狂弦+
#--------------------------------------------------------------------------  
    when 436
      case frame # 影格
      when 44
        return [-5, 15]
      else
        return
      end  
#--------------------------------------------------------------------------
# ● 沒設定
#--------------------------------------------------------------------------  
    else
      return
    end
  end # def end
  
  
  
 # Skill_Target_Move = []
  
   # 三爪痕
  #Skill_Target_Move[155] = [[], [], [10,20]] 
  
  # 灰滅‧牙狼舞月
  #Skill_Target_Move[156] = []  
  #Skill_Target_Move[156][3] = [nil,20] # 第 4 下
  
end
