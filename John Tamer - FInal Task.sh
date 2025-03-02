#!/bin/bash

while true; do
    clear
    echo "--- Main Menu ---"
    echo "1) Users"
    echo "2) Groups"
    echo "3) Exit"
    read -p "Choose an option: " main_choice

    case $main_choice in
        1)  # Users Menu
            while true; do
                clear
                echo "--- Users Menu ---"
                echo "1) Add User"
                echo "2) Modify User"
                echo "3) Delete User"
                echo "4) Back to Main Menu"
                read -p "Choose an option: " user_choice
                
                case $user_choice in
                    1)  # Add User
                        while true; do
                            clear
                            echo "--- Add User ---"
                            echo "1) Enter Username"
                            echo "2) Back to Users Menu"
                            read -p "Choose an option: " add_user_choice
                            
                            case $add_user_choice in
                                1)
                                    read -p "Enter username: " username
                                    useradd $username && echo "User $username added successfully!"
                                    read -p "Press Enter to continue..."
                                    ;;
                                2) break ;;  # Back to Users Menu
                                *) echo "Invalid choice!"; sleep 1 ;;
                            esac
                        done
                        ;;
                    
                    2)  # Modify User
                        while true; do
                            clear
                            echo "--- Modify User ---"
                            echo "1) Change Password"
                            echo "2) Change User ID"
                            echo "3) Back to Users Menu"
                            read -p "Choose an option: " modify_choice

                            case $modify_choice in
                                1)
                                    read -p "Enter username: " username
                                    passwd $username
                                    read -p "Press Enter to continue..."
                                    ;;
                                2)
                                    read -p "Enter username: " username
                                    read -p "Enter new UID: " new_uid
                                    usermod -u $new_uid $username && echo "User $username UID changed to $new_uid"
                                    read -p "Press Enter to continue..."
                                    ;;
                                3) break ;;  # Back to Users Menu
                                *) echo "Invalid choice!"; sleep 1 ;;
                            esac
                        done
                        ;;
                    
                    3)  # Delete User
                        while true; do
                            clear
                            echo "--- Delete User ---"
                            echo "1) Enter Username to Delete"
                            echo "2) Back to Users Menu"
                            read -p "Choose an option: " delete_choice

                            case $delete_choice in
                                1)
                                    read -p "Enter username: " username
                                    userdel $username && echo "User $username deleted successfully!"
                                    read -p "Press Enter to continue..."
                                    ;;
                                2) break ;;  # Back to Users Menu
                                *) echo "Invalid choice!"; sleep 1 ;;
                            esac
                        done
                        ;;
                    
                    4) break ;;  # Back to Main Menu
                    *) echo "Invalid choice!"; sleep 1 ;;
                esac
            done
            ;;

        2)  # Groups Menu
            while true; do
                clear
                echo "--- Groups Menu ---"
                echo "1) Add Group"
                echo "2) Delete Group"
                echo "3) Back to Main Menu"
                read -p "Choose an option: " group_choice

                case $group_choice in
                    1)  # Add Group
                        while true; do
                            clear
                            echo "--- Add Group ---"
                            echo "1) Enter Group Name"
                            echo "2) Back to Groups Menu"
                            read -p "Choose an option: " add_group_choice

                            case $add_group_choice in
                                1)
                                    read -p "Enter group name: " groupname
                                    groupadd $groupname && echo "Group $groupname added successfully!"
                                    read -p "Press Enter to continue..."
                                    ;;
                                2) break ;;  # Back to Groups Menu
                                *) echo "Invalid choice!"; sleep 1 ;;
                            esac
                        done
                        ;;
                    
                    2)  # Delete Group
                        while true; do
                            clear
                            echo "--- Delete Group ---"
                            echo "1) Enter Group Name to Delete"
                            echo "2) Back to Groups Menu"
                            read -p "Choose an option: " delete_group_choice

                            case $delete_group_choice in
                                1)
                                    read -p "Enter group name: " groupname
                                    groupdel $groupname && echo "Group $groupname deleted successfully!"
                                    read -p "Press Enter to continue..."
                                    ;;
                                2) break ;;  # Back to Groups Menu
                                *) echo "Invalid choice!"; sleep 1 ;;
                            esac
                        done
                        ;;
                    
                    3) break ;;  # Back to Main Menu
                    *) echo "Invalid choice!"; sleep 1 ;;
                esac
            done
            ;;

        3)  # Exit
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;

        *) echo "Invalid choice! Please enter 1, 2, or 3."; sleep 1 ;;
    esac
done
